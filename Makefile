DOCKER_BUILD_ARGS = \
    --build-arg NEPTUNE_API_TOKEN=${NEPTUNE_API_TOKEN}

DOCKER_IMAGE_NAME = gaig
DOCKER_CONTAINER_NAME = gaig_container

.PHONY: docker_build
docker_build:
	sudo docker build -t $(DOCKER_IMAGE_NAME) $(DOCKER_BUILD_ARGS) -f Dockerfile . \


.PHONY: docker
docker_run:
	sudo docker run --name $(DOCKER_CONTAINER_NAME) $(DOCKER_IMAGE_NAME)
