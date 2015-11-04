# let's play with Docker

[Official docker documentation](https://docs.docker.com/)

[Install docker](https://docs.docker.com/engine/installation/)

Short version (may not be the last version):

  Fedora/RedHat:

	$ sudo dnf install docker

Run docker daemon:

  Fedora/RedHat:

	$ sudo systemctl start docker

Run an interactive shell in a container:
	(https://docs.docker.com/engine/userguide/basics/)

Short version:
	docker run -t -i <container_ID> /bin/bash

	docker run -t -i ubuntu /bin/bash

Build a container:

	https://docs.docker.com/reference/builder/

Short version:
	docker build <path_to_the_Dokerfile>

MultiNest docker image creation:

Clone the multinest git repo

Go inside and execute:

	docker build ./

You should obtain the container ID:

	Successfully built e553342157db

With the following command you will Run the container and log into with a bash command line::

	sudo docker run -t -i e553342157db /bin/bash 
