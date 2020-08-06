#!/usr/bin/env bash

set -eo pipefail

if [[ $LE_TRIGGERED_FROM_BUILD_ID ]]
then
  echo "--- Downloading from triggered build"
  buildkite-agent artifact download "dist/*.whl" . --build $LE_TRIGGERED_FROM_BUILD_ID
  mv dist build_src
  if [[ -z $BUILDKITE_TRIGGERED_FROM_BUILD_ID ]]
  then
    buildkite-agent annotate "This is a rebuild from a triggered build. Using parent's WHL" --style warning
  fi
fi

build_tools/docker_build.sh

if [[ $LE_TRIGGERED_FROM_JOB_ID && $BUILDKITE_TRIGGERED_FROM_BUILD_ID ]]
then
  echo "--- Uploading artifact to parent job"
  buildkite-agent artifact upload './dist/*.exe' --job $LE_TRIGGERED_FROM_JOB_ID
fi

echo "--- Uploading artifact"
# Upload all built .deb files (one) as a buildkite artifact.
buildkite-agent artifact upload './dist/*.exe'
