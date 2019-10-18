---
id: Docker
title: Docker
sidebar_label: Docker
---

# HOW TO DOCKER

- Overleaf
    - an.ko@
    - menTec7


### Getting Started	https://docs.docker.com/get-started/
### Libraries			https://docs.docker.com/samples/#library-references


| *docker images*
- show all Docker images


| *docker ps*
- show all Docker container
- docker ps -a
    - shows all docker container (some are otherwise invisible)
    - those dont necessarily get removed by "docker rm"

| *docker run hello-world*
- Run hello-world to see if the instillation is working


###################################################################

# Dockerfile Befehle

## CMD Befehle

docker build
- build an image
docker run
- run an image
docker ps -a
- show all running container
docker images
- show all build images
docker exec
- ssh into a running container
docker login
- login for "hub.docker.com"
docker info
- 
docker attach
- 
docker logs
- 
docker stop
- stop Container (still in the background, seen with docker ps -a)
docker rm / rmi
- remove image / container

## FROM

- The base image for building a new image. This command must be on top of the dockerfile

## MAINTAINER

- optional, it contains the name of the maintainer of the image

## ADD

Copy a file from the host machine to the new docker image. There is an option to use an URL for the file, docker will then download that file to the destination directory.

## ENV

Define an environment variable
ENV <name> <value>

e.g.
ENV Port 8000

## RUN

- used to execute a command during the build process of the docker image
- e.g.
    - RUN echo $PROPERTY_NAME
    - apt update
    - apt upgrade
    - apt install maven 

## CMD

Used for executing commands when we build a newcontainer from the docker image.
- does not run when you simply build the Container
- can only be used once and is basically an end point, where the last command should be

e.g.
CMD java \
    -cp 'google-cloudsearch-database-connector-v1-0.0.5.jar:sforce-jdbc.jar' \
    com.google.enterprise.cloudsearch.database.DatabaseFullTraversalConnector \
    -Dconfig=$PROPERTY_NAME

ENTRYPOINT

Define the default command that will be executed when the container is running.
- TODO testing

WORKDIR

This is directive for CMD command to be executed.

USER

Set the user or UID for the container created with the image.

VOLUME

Enable access/linked directory between the container and the host machine.

EXPOSE


###################################################################

# Start Image

Create and Start an Image inside a Docker Container

Create Image -> Build Image (nothing still in the container)

- First go into the directory with the Dockerfile
- image Name must contain lower case letters only

| *docker build -t imagename .*
- Don't forget the  "."  at the end

| *docker run -p 4000:80 imageName*
- Create a container and starts the Image inside of it
- 4000 is the port from the docker; 80 is the port of the server inside the file you want to use e.g. python or express server

| *docker run -p 4000 imageName*

- when you do docker run, you CANT access the server via localhost:80   (maybe only in windows, sometimes you can use localhost:4000 or 0.0.0.0:4000)
- use the docker ip e.g.    192.168.99.100:4000
- get ip with: docker inspect <containerID>; OR just start the Docker Quickstart Terminal it shows the ip
- Best: !!! docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <containerId>
- docker inspect <container id> | grep "IPAddress"


## Start image without it exiting

    docker run -t -d imagename

## OR use Docker Compose
https://docs.docker.com/compose/gettingstarted/

fast alles wie zuvor nur erstelle noch docker-compose.yml
- man muss nicht mehr build und run machen

###################################################################

# DELETE #

## Delete Docker Container:

| *docker ps*
- to look up the id
  
| *docker rm --force imageId*
- remove image

# Delete Docker Image:

| *docker images*
- to look up image id

| *docker rmi --force imageId*
- delete from "docker images"
- oder Repository Name

# Delete Volumes

| *docker volume rm -f volumeId*
- delete from "docker ps"
- delete one Volumes


| *docker system prune*
- Delete Everything (??? images and container are still there afterwards ???)

###################################################################

## Access CMD inside the Container (SSH into running Container)

http://phase2.github.io/devtools/common-tasks/ssh-into-a-container/

- can only be used on a running Container

| *docker exec -it containerId bash*

###################################################################

# Docker Compose

- hauptsächlich für Development Stage und Testing (i think?)

## NodeJs

    version: "2"
    services:
    node:
        image: "node:8"
        user: "node"
        working_dir: /home/node/app
        environment:
        - NODE_ENV=production
        volumes:
        - ./:/home/node/app
        expose:
        - "8081"
        command: "npm start"

	
Befehle:

| *docker-compose build*

| *docker-compose up*

| *docker-compose ps*

| *docker-compose rm*

###################################################################

# Docker Volume #

- WHAT DOES IT DO???
    - i think:
    - WRONG? z.B. eine Datei vom lokalen Speicher in den Docker Container verschieben
    - er stellt eine Verbindung/Abbildung her von einer lokalen Datei. Das heißt wenn man in einer lokalen Datei etwas ändert, muss der Docker Container nicht nochmal neu gebaut werden (build)
        - sondern nur nochmal docker run (oder automatisch???, wenn er die ganze Zeit läuft?)
-
    - official:
        - Create mount points for holding externally mounted volumes from the native host or other containers.
        - https://docs.docker.com/engine/reference/builder/#volume


| *docker volume ls*
- show all volumes

| *docker run -it -v "//c/Users/nisys/Desktop/Andre/DockerImages/wetter:/usr/src/app" -p 4000:4200 testmount*

- This via the -v parameter kind of makes a COPY command inside the Docker Container 

Other Option:

put the Volume inside the Dockerfile:

VOLUME . /usr/src/app
- doesn't work ??? maybe only on windows ???

# Delete Volumes

| *docker volume rm -f volumeId*
- delete one Volumes

docker rm $(docker ps -a -q)
- delete all Container

docker exit

###################################################################

# SAVE & Load

## Save

| *docker save -o < path > < name >*
- save
  
| *docker save imageName*
- fileName.tar

| *docker save --output busybox.tar busybox*
- save asbusybox.tar

| *docker save -o C:\Users\Andre wetterimage*
- save as

## Load

| *docker load*
- fileName.tar

| *docker load --input fileName.tar*

###################################################################

# Variables and Environmental Variables

## ARG

- kann im "docker build" Befehl benutzt werden

// Vorher muss! man die Variable initialisieren, optional mit default value

ARG PROPERTY_NAME=default_value
RUN echo $PROPERTY_NAME

e.g.
docker build --build-arg PROPERTY_NAME=someName -t imageName .

## ENV

- wird innerhalb des "docker run" Befehls eingesetzt

ENV PROPERTY_NAME accounts_connector-config.properties

e.g.
docker run --name=Accounts -e PROPERTY_NAME=someName imageName

###################################################################

# Docker Hub #

Erstelle Account bei https://hub.docker.com/

## Push

| *docker login --username=yourhubusername*

| *docker tag imageId yourhubusername/repoName:firsttry*
- get image id and repoName with:	docker images
- insead firsttry to latest which is the default when pulling (when you are not doing the tag latest is probably the standard)

| *docker push yourhubusername/repoName*

## Pull

| *docker pull cato0/test3*

| *docker run -p 4000:8000 cato0/test3*

- http://192.168.99.100:4000/


###################################################################

# Docker Mounting Volume

- Updates on the Host are immediately reflected into the Docker container
- use this for Docker during Development

| *docker run -v /host/directory:/container/directory -other -options image_name command_to_run*

e.g.

| *docker run -it -v /usr/src/test:/usr/src/app -p 4000:4200 cato0/wetter*

| *docker run -it -v "//c/users/DockerImages/wetter:/usr/src/app" -p 4000:4200 cato0/wetter*

- -it => (Interactively)

###################################################################

# Dockerfile für Angular + NodeJS #

    FROM node:8.11.3

    WORKDIR /usr/src/app

    RUN npm install
    RUN npm install -g @angular/cli
    RUN npm install -g @angular-devkit/build-angular

    COPY . .

    RUN npm install

    EXPOSE 4200

    CMD ng serve --host 0.0.0.0


# .dockerignore #

    node_modules
    npm-debug.log
    Dockerfile*
    .dockerignore
    .git
    .gitignore
    README.md

###################################################################

# Dockerfile für Python #

| *FROM python:2.7-slim*
- Use an official Python runtime as a parent image


| *WORKDIR /app*
- Set the working directory to /app

| *ADD . /app*
- Copy the current directory contents into the container at /app

| *RUN pip install --trusted-host pypi.python.org -r requirements.txt*
- Install any needed packages specified in requirements.txt
- RUN [ <command> , <parameter>]
- e.g. [ TODO ]
or 
- RUN <command>
- e.g.
RUN apt-get update


| *EXPOSE 80*
- Make port 80 available to the world outside of this container

| *ENV NAME World*
- Define environment variable
- e.g.
    - ENV LOG_PATH /logs
    - ENV SERVER_PORT 8000

| *CMD ["python", "app.py"]*
- Run app.py when the container launches

# Create requirements.txt file

Inhalt:

    Flask
    Redis


# Create Python file app.py #

    from flask import Flask
    from redis import Redis, RedisError

    import os

    import socket

# Connect to Redis

    redis = Redis(host="redis", db=0, socket_connect_timeout=2, socket_timeout=2)

    app = Flask(__name__)

    @app.route("/")

    def hello():

        try:
            visits = redis.incr("counter")
        except RedisError:
            visits = "<i>cannot connect to Redis, counter disabled</i>"

        html = "<h3>Hello {name}!</h3>" \
            "<b>Hostname:</b> {hostname}<br/>" \
            "<b>Visits:</b> {visits}"
        return html.format(name=os.getenv("NAME", "world"), hostname=socket.gethostname(), visits=visits)


    if __name__ == "__main__":
        app.run(host='0.0.0.0', port=80)


###################################################################

# Nice Tips

1. 
- use this Command to keep the Docker Container running
> CMD tail -f /dev/null


2. Copy something from Dokcer Container, to the Host
- docker cp <containerId>:/file/path/within/container /host/path/target
- e.g.
    - docker cp e76a2006338f:/usr/app/ /Users/akonhardt/Desktop/Stuff/DockerFiles

3. Transfer Parameters into the Docker Container
- create an Environmental Variable and set it to the name of something that the User puts in
- docker run -e MYVAR1 -e MYVAR2=foo --env-file ./env.list ubuntu bash
- -e MYVAR1             => sets a locally name MYVAR envirable and sents it to the container
- -e MYVAR2=foo         => sets the Environmetal Variable MYVAR2 inside the Container to foo
- --env-file ./env.list => sets a file ???

