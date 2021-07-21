# webex_api_lab
This repository contains all information needed to run this lab guide.
# Requirements
To run the guide locally please install docker on your personal machine 
https://docs.docker.com/get-docker/
# Run environment
To get a live environment please run the following command from the main directory:
docker build -t webex-api . 
the created image will be tagged as webex-api
If you open your terminal and enter docker images, you be able to see the image there 

To start the notebook server execute this command:

docker run -it --rm --name apilab -p 8888:8888 webex-api

