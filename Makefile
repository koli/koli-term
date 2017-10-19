SHORT_NAME ?= koli-term

include versioning.mk

# # It's necessary to set this because some environments don't link sh -> bash.
SHELL := /bin/bash

GITCOMMIT ?= $(shell git rev-parse HEAD)
DATE ?= $(shell date -u "+%Y-%m-%dT%H:%M:%SZ")

docker-build:
	docker build --rm -t ${IMAGE} rootfs
	docker tag ${IMAGE} ${MUTABLE_IMAGE}

.PHONY: build docker-build
