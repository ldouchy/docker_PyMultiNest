# docker


MultiNest docker image creation:

Clone the multinest git repo
Go inside and execute:
	docker build ./

You should obtain the container ID:
	Successfully built e553342157db

With the following command you will Run the container and log into with a bash command line::
	sudo docker run -t -i e553342157db /bin/bash 
