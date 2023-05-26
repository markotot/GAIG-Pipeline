GIT_BRANCH = main
PROJECT_NAME = GAIG-Pipeline

DOCKER_IMAGE_PATH = docker/Dockerfile
DOCKER_IMAGE_NAME = gaig
DOCKER_CONTAINER_NAME = gaig_container

DOCKER_BUILD_ARGS = \
    --build-arg NEPTUNE_API_TOKEN=${NEPTUNE_API_TOKEN} \
    --build-arg GITHUB_USERNAME=${GITHUB_USER} \
    --build-arg GITHUB_ACCESS_TOKEN=${GITHUB_TOKEN} \
    --build-arg GIT_BRANCH=${GIT_BRANCH} \
    --build-arg PROJECT_NAME=${PROJECT_NAME} \

.PHONY: docker_test
docker_test:
	sudo echo $(DOCKER_BUILD_ARGS)


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
