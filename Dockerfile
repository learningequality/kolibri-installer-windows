FROM python:3 AS py-cold-prep

RUN mkdir whl version && \
	pip download kolibri -d /whl && \
	pip install whl/kolibri*.whl && \
	python -c "import kolibri; print(kolibri.__version__)" > /version/VERSION


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

ENV PYTHON_VERSION=3.4.3 PY_DL_DIR=/tmp/python_downloads

# Download python 3.4 distributions, for later use
ADD https://www.python.org/ftp/python/${PYTHON_VERSION}/python-${PYTHON_VERSION}.msi \
	${PY_DL_DIR}/python-${PYTHON_VERSION}.msi
ADD https://www.python.org/ftp/python/${PYTHON_VERSION}/python-${PYTHON_VERSION}.amd64.msi \
	${PY_DL_DIR}/python-${PYTHON_VERSION}.amd64.msi

COPY --from=py-cold-prep whl/*.whl /whl/
COPY --from=py-cold-prep version/VERSION /version/VERSION

COPY src src

WORKDIR src

RUN mv ${PY_DL_DIR}/* python-setup/

CMD mv /whl/*.whl . && \
	export KOLIBRI_BUILD_VERSION=$(cat /version/VERSION) && \
	wine inno-compiler/ISCC.exe installer-source/KolibriSetupScript.iss && \
	mkdir /exe && \
	cp *.exe /exe/kolibri-$KOLIBRI_BUILD_VERSION-unsigned.exe
