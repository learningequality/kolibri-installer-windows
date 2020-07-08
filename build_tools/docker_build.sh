#!/usr/bin/env bash
set -euo pipefail

# if [[ -f $PWD/src ]]
# export KOLIBRI_VERSION=$(cat kolibri/VERSION)

# echo "\n  !! This assumes you have run 'make dockerenvdist' or 'make dist' !!\n"
docker image build -t "learningequality/kolibri-windows" -f Dockerfile .
# docker run --env-file ./docker/env.list -v $$PWD/dist:/kolibridist "learningequality/kolibri-windows"
docker run "learningequality/kolibri-windows"
