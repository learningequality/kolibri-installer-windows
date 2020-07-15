#!/usr/bin/env bash
set -euo pipefail

# A file, managed by Docker, with the ID of the created container.
# Provides a consistent, unique reference to the container without using a tag.
# Tags don't work well with concurrent builds run by the same script.
CIDFILE=docker-deb.cid
IIDFILE=docker-deb.iid

trap "rm *.cid *.iid" exit

# Build early whl prep step with tag. Might be used earlier
docker build \
  --target whl-cold-prep \
  -t "whl-prep-image" \
  .

# Build image to be used for actual build
docker build \
  -t "learningequality/kolibri-windows" \
  --iidfile $IIDFILE \
  .

if [ -a $PWD/build_src/*.whl ]
then
  echo "--- Creating exe from custom WHL"
  # Run build for just KOLIBRI_VERSION
  docker run \
    --rm \
    -v $PWD/build_src:/whl \
    -v windows_version:/version \
    --cidfile version.cid \
    whl-prep-image ./docker_get_version.sh

  docker run \
    --cidfile $CIDFILE \
    -v windows_version:/version \
    -v $PWD/build_src:/whl \
    $(< $IIDFILE)
else
  echo "--- Creating exe from PyPi WHL"
  docker run \
  --cidfile $CIDFILE \
  --env KOLIBRI_VERSION \
  $(< $IIDFILE)
fi


CID=$(< $CIDFILE)
trap "rm *.cid *.iid && docker rm $CID" exit
rm -rf dist
docker cp $CID:/exe dist
