# webex_api_lab
This repository contains all information needed to run this lab guide.
# Requirements
To run the guide locally please install docker on your personal machine 
https://docs.docker.com/get-docker/
# Run environment
To get a live environment please run the following command from the main directory:

    docker build -t webex-api . 

the created image will be tagged as webex-api

If you open your terminal and enter 

    docker images

you be able to see the create docker conotainer image  

To start the notebook server execute this command:

    docker run -it --rm --name apilab -p 8888:8888 webex-api

If you don't want to build your own image you can also just pull and execute the image I prepared from the following link:

    docker run -it --rm --name jupyter -p 8888:8888 omerilyas/api-lab

When executed for the 1st time Docker will pull the image from hub.docker.com and then start a container based off this image.

The options used in both commands:

    -it : requests an interactive console

    --rm : makes sure that the docker container that gets created will be automatically removed when execution finishes

    --name jupyter : sets the name for the running container.

    -p 8888:8888 : maps port 8888 of the local host to port 8888 of the container; required to access the notebook server. If port 8888 on your local system is not available then use a different port; -p 8889:8888 for example maps local port 8889 to port 8888 of the container.

    omerilyas/api-lab : is the name of the image to run


