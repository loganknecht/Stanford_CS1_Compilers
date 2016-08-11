all: dockerbuild loadimage

virtual_repo := /root/repositories/stanford_lagunita_cs1_compilers
docker_image := hugbot/stanford_lagunita_cs1_compilers_base

dockerbuild:
	docker pull $(docker_image)

loadimage:
	docker run -v `(pwd)`:$(virtual_repo) -w $(virtual_repo) -it $(docker_image) bash
