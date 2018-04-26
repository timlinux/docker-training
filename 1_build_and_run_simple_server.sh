#!/bin/bash
docker build -t kartoza/python-server .
docker run -p 8000:8000 kartoza/python-server
