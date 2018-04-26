#!/bin/bash

docker kill pyserve
docker kill pyserve2
docker rm pyserve pyserve2
docker volume rm Storage
