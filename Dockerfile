FROM golang:bullseye

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /root
RUN  apt update -y
RUN  apt install postgresql postgresql-contrib redis-server -y
COPY . .
RUN make build
