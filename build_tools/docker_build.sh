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

if [ -a $PWD/src_whl/*.whl ]
then
  echo "--- Creating exe from custom WHL"
  # Run build for just KOLIBRI_VERSION
  docker run \
    -v $PWD/src_whl:/whl \
    --cidfile version.cid \
    whl-prep-image
  VERSION_CID=$(< version.cid)
  docker cp $VERSION_CID:/version .
  docker rm $VERSION_CID

  docker run \
    --cidfile $CIDFILE \
    -v $PWD/version:/version \
    -v $PWD/src_whl:/whl \
    --env KOLIBRI_VERSION \
    $(< $IIDFILE)
else
  echo "--- Creating exe from PyPi WHL"
  # docker run --env-file ./docker/env.list -v $$PWD/dist:/kolibridist "learningequality/kolibri-windows"
  docker run \
  --cidfile $CIDFILE \
  --env KOLIBRI_VERSION \
  $(< $IIDFILE)
fi


CID=$(< $CIDFILE)
trap "rm *.cid *.iid && docker rm $CID" exit
docker cp $CID:/exe/ dist/
