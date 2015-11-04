# let's play with Docker

Links to the [official docker documentation](https://docs.docker.com/):

[Install docker](https://docs.docker.com/engine/installation/)

[Docker basics](https://docs.docker.com/engine/userguide/basics/)

[Build a container](https://docs.docker.com/reference/builder/)


## Install docker:
Short version (may not be the last version):
  Fedora/RedHat:

	$ sudo dnf install docker

## Run docker daemon:
  Fedora/RedHat:

	$ sudo systemctl start docker

## Run an interactive shell in a container:

  Short version:
	docker run -t -i <container_ID> /bin/bash

	docker run -t -i ubuntu /bin/bash

## Build a container:

  Short version:
	docker build <path_to_the_Dokerfile>


# PyMultiNest docker image creation:

## Clone the multinest git repo

	git clone https://github.com/ldouchy/docker_PyMultiNest.git

## Run the build:

	docker build <path_to_docker_PyMultiNest>

  You should obtain the container ID:

	Successfully built e553342157db

## In order to run your code you need to [customize the Dockerfile] with your own code(https://github.com/ldouchy/docker_PyMultiNest/tree/master/PyMultiNest_dockerfile)

## Run the container with an interractive shell

	sudo docker run -t -i e553342157db /bin/bash 

