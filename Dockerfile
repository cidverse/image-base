# syntax=docker/dockerfile:1.4

# base image
FROM docker.io/fedora:37

# env
ENV CACHE_DOWNLOAD=/var/cache/download \
    CACHE_EXTRACT=/var/cache/extract

# add script files
ADD --chmod=755 bin /usr/local/bin/

# install packages
RUN --mount=type=cache,target=/var/cache do-install curl wget unzip git
