FROM ubuntu:20.04

LABEL maintainer="jramoyo@gmail.com"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y apt-utils \
    && apt-get install -y tzdata \
    && apt-get install -y build-essential

RUN apt-get install -y docker.io \
    && apt-get install -y awscli

CMD []