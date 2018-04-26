# Let's use a nice small base image, only 1.8mb!
FROM alpine:3.5
# The guy who maintains this
MAINTAINER Tim Sutton <tim@kartoza.com>
# Install some alpine packages ...
# See https://pkgs.alpinelinux.org/packages for a list of available alpine packages
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*
WORKDIR /
EXPOSE 8000
ENTRYPOINT ["python"]
CMD ["-m", "SimpleHTTPServer"]
