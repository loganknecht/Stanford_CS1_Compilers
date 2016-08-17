all: dockerbuild loadimage

virtual_repo := /root/repositories/stanford_lagunita_cs1_compilers
docker_image := hugbot/stanford_lagunita_cs1_compilers_base

dockerbuild:
	docker build -f docker_images/Dockerfile -t $(docker_image) .

dockerpull:
	docker pull $(docker_image)

loadimage:
	docker run -it $(docker_image) bash
	# docker run -v `(pwd)`:$(virtual_repo) -w $(virtual_repo) -it $(docker_image) bash

