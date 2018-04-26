#!/bin/bash
docker build -t kartoza/python-server .
docker run -v /Users/timlinux/dev/docker/docker-training:/home -p 8000:8000 kartoza/python-server
