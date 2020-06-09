# May be prepopulated by builidkite scripts
src/kolibri.whl:
	mkdir -p src
	pip3 download kolibri src

docker-windows: writeversion docker-envlist
	@echo "\n  !! This assumes you have run 'make dockerenvdist' or 'make dist' !!\n"
	docker image build -t "learningequality/kolibri-windows" -f docker/build_windows.dockerfile .
	export KOLIBRI_VERSION=$$(cat kolibri/VERSION) && \
	docker run --env-file ./docker/env.list -v $$PWD/dist:/kolibridist "learningequality/kolibri-windows"
	git checkout -- ./docker/env.list  # restore env.list file
