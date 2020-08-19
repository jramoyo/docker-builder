SHELL := /bin/bash
.PHONY: build push pull plan apply

IMAGE      ?= jramoyo/docker-builder
TAG_LATEST ?= latest

build:
	docker build . \
        --tag ${IMAGE}:${TAG_VERSION} \
        --tag ${IMAGE}:${TAG_LATEST}

push:
	docker push ${IMAGE}:${TAG_VERSION}
	docker push ${IMAGE}:${TAG_LATEST}