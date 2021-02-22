#Version: 0.0.`
FROM ubuntu:latest
MAINTAINER Noel Presti "NoelXP@Gmail.com"
RUN apt-get update
RUN apt-get install -y nginx
RUN echo 'Hi, I am in your container' \
	>/usr/share/nginx/html/index.html
EXPOSE 80


##This is to demonstrate how a Dockerfile contains a set of instructions  processed from the top down
##Each instruction adds a new layer to the image and then commits the image. Docker executes roughly follow a workflow:
##Docker runs a continer FROM the image
##An instruction executes and makes changes to the container
##Docker runs the equivalent of docker commit to commit a new layer
##Docker then runs a new container from this new image
##The next instruction in the file is excuted and the process repeats until all instructions have been executed.


