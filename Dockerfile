# Set the base image to ubuntu
# https://hub.docker.com/_/ubuntu
FROM ubuntu:18.04

RUN apt-get -qq update \
    && apt-get install -qq -y \
        add \
        bash \
        git

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
