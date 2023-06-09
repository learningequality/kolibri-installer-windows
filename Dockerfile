FROM python:3.8 AS whl-cold-prep

RUN mkdir whl version && \
	pip download kolibri -d /whl

COPY build_tools/docker_get_version.sh .

RUN ./docker_get_version.sh

FROM ubuntu:bionic AS download-python

COPY src/Makefile .

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y make wget

RUN mkdir python-setup && make

FROM ubuntu:bionic

# Install wine and related packages
RUN dpkg --add-architecture i386

ENV DEBIAN_FRONTEND=noninteractive

# Install system level deps
RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
RUN apt-get update -y && \
	apt-get install -y --no-install-recommends \
	ca-certificates \
	git \
	git-lfs \
	sudo \
	software-properties-common \
	ttf-mscorefonts-installer \
	wine-stable \
	ttf-mscorefonts-installer \
	wine-stable \
	make \
	wine32

RUN git lfs install

ENV PY_DL_DIR=/tmp/python_downloads

COPY --from=download-python /python-setup/ ${PY_DL_DIR}
COPY --from=whl-cold-prep whl/*.whl /whl/
COPY --from=whl-cold-prep version/VERSION /version/VERSION

COPY src src

WORKDIR src

RUN mv ${PY_DL_DIR}/* python-setup/

CMD cp /whl/*.whl . && \
	export KOLIBRI_BUILD_VERSION=$(cat /version/VERSION) && \
	wine inno-compiler/ISCC.exe installer-source/KolibriSetupScript.iss
