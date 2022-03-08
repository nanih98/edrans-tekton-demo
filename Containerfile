FROM docker.io/nginxinc/nginx-unprivileged:1.21-alpine

ARG UID=101

USER root
# Simulating that i need to install something inside the container
RUN apk add --no-cache jq wget curl php7 

COPY index.html /usr/share/nginx/html/index.html

USER $UID
