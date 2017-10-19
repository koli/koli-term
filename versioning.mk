GIT_TAG ?= $(or ${TRAVIS_TAG},${TRAVIS_TAG},latest)
MUTABLE_VERSION ?= latest
VERSION ?= ${GIT_TAG}
GITCOMMIT ?= $(shell git rev-parse HEAD)
DATE ?= $(shell date -u "+%Y-%m-%dT%H:%M:%SZ")

KOLI_REGISTRY ?= quay.io/
IMAGE_PREFIX ?= koli

IMAGE := ${KOLI_REGISTRY}${IMAGE_PREFIX}/${SHORT_NAME}:${VERSION}
MUTABLE_IMAGE := ${KOLI_REGISTRY}${IMAGE_PREFIX}/${SHORT_NAME}:${MUTABLE_VERSION}

info:
	@echo "Build tag:       ${VERSION}"
	@echo "Registry:        ${KOLI_REGISTRY}"
	@echo "Immutable tag:   ${IMAGE}"
	@echo "Mutable tag:     ${MUTABLE_IMAGE}"

.PHONY: docker-push
docker-push: 
	docker login quay.io -u="${DOCKER_USERNAME}" -p="${DOCKER_PASSWORD}"
	docker push ${IMAGE}

