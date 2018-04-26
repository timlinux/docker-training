#!/bin/bash
docker build -t kartoza/python-server .
docker volume create Storage
docker run --name="pyserve" -v Storage:/home -p 8000:8000 -dt kartoza/python-server
docker cp HelloWorld.txt pyserve:/home/
docker run --name="pyserve2" -v Storage:/home -p 8001:8000 -dt kartoza/python-server
