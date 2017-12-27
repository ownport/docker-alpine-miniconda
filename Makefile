build-miniconda-image:
	docker build -t ownport/alpine-miniconda:4.3.31 .

run-miniconda:
	docker run -ti --rm --name miniconda \
		-v $(shell pwd):/data \
		ownport/alpine-miniconda:4.3.31 \
		/bin/bash

