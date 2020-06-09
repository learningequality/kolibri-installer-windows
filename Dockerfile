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



# TODO(cpauya): Verify the checksums of the downloaded Python installers.

CMD git clone https://github.com/learningequality/kolibri-installer-windows.git && \
      cd kolibri-installer-windows && \
      git checkout $KOLIBRI_WINDOWS_INSTALLER_VERSION && \
      cd src && \
      cp /kolibridist/kolibri-$KOLIBRI_VERSION*.whl . && \
      export KOLIBRI_BUILD_VERSION=$KOLIBRI_VERSION && \
      make && \
      curl -sS https://www.python.org/ftp/python/3.4.3/python-3.4.3.msi --output "python-setup/python-3.4.3.msi" && \
      curl -sS https://www.python.org/ftp/python/3.4.3/python-3.4.3.amd64.msi --output "python-setup/python-3.4.3.amd64.msi" && \
      wine inno-compiler/ISCC.exe installer-source/KolibriSetupScript.iss && \
      mv *.exe kolibri-$KOLIBRI_VERSION-unsigned.exe && \
      cp *.exe /kolibridist/
