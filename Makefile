SHELL := /bin/bash
.PHONY: build push pull plan apply

IMAGE        ?= jramoyo/docker-builder
IMAGE_LATEST ?= latest

build:
	docker build . \
        --tag ${IMAGE}:${IMAGE_TAG} \
        --tag ${IMAGE}:${IMAGE_LATEST}

push:
	docker push ${IMAGE}:${IMAGE_TAG}
	docker push ${IMAGE}:${IMAGE_LATEST}