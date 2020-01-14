.PHONY: all build push test

DOCKER_IMAGE_NAME=garagemdigital/leitor-digital-hamster

all: build

build:
	docker build -t $(DOCKER_IMAGE_NAME):1.0.0 .

push:
	docker push $(DOCKER_IMAGE_NAME)

test:
	docker run --rm $(DOCKER_IMAGE_NAME) /bin/echo "Success."
