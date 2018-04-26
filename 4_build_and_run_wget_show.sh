#!/bin/bash

docker build -t kartoza/wget-show:latest -f Dockerfile-wget .
docker build -t kartoza/python-server .
docker volume create Storage
docker run --name="pyserve" -v Storage:/home -p 8000:8000 -dt kartoza/python-server
docker cp HelloWorld.txt pyserve:/home/
docker container ls
docker volume ls | grep Storage
docker run -ti --name="wget-show" --rm --link pyserve:pyserve kartoza/wget-show
