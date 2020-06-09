#!/usr/bin/env bash

set -euo pipefail

# Not necessary for triggered builds
buildkite-agent artifact download 'dist/*.whl'

# TODO define installer version to pin?

make docker-windows

buildkite-agent artifact upload './dist/*.exe'
