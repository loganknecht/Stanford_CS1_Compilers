all: dockerbuild loadimage

dockerbuild:
	docker pull hugbot/stanford_lagunita_cs1_compilers_base

loadimage:
	docker run -v `(pwd)`:/root/repositories/stanford_lagunita_cs1_compilers -it hugbot/stanford_lagunita_cs1_compilers_base bash  
