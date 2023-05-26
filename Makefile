DOCKER_BUILD_ARGS = \
    --build-arg NEPTUNE_API_TOKEN=${NEPTUNE_API_TOKEN}

DOCKER_IMAGE_PATH = docker/Dockerfile
DOCKER_IMAGE_NAME = gaig
DOCKER_CONTAINER_NAME = gaig_container

.PHONY: docker_build
docker_build:
	sudo docker build -t $(DOCKER_IMAGE_NAME) $(DOCKER_BUILD_ARGS) -f $(DOCKER_IMAGE_PATH) . \


.PHONY: docker_run
docker_run:
	sudo docker run --name $(DOCKER_CONTAINER_NAME) $(DOCKER_IMAGE_NAME)

.PHONY: docker_remove_container
docker_remove_container:
	sudo docker rm $(DOCKER_CONTAINER_NAME)

.PHONY: docker_remove_image
docker_remove_image:
	sudo docker image rm $(DOCKER_IMAGE_NAME)

.PHONY: docker_prune
docker_prune:
	sudo docker system prune
