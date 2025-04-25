SHELL := /bin/bash

.PHONY: all build run deps clean db-build db-run db-stop db-rm

BINARY_NAME := codapi
GO_BUILD_FLAGS := -ldflags="-s -w" # Optional: strip debug info
DOCKER_IMAGE_NAME := codapi-db
DOCKER_CONTAINER_NAME := codapi-db-container
DOCKER_PASSWORD := codapi # Remember to use a more secure password in production

all: build db-run run # Default action: build app, start DB, run app

deps:
	go mod download

build: deps
	go build $(GO_BUILD_FLAGS) -o $(BINARY_NAME) .

run: build
	./$(BINARY_NAME)

clean:
	go clean
	rm -f $(BINARY_NAME)

db-build:
	docker build -t $(DOCKER_IMAGE_NAME) .

db-run: db-build
	docker run -d --name $(DOCKER_CONTAINER_NAME) -p 5432:5432 -e POSTGRES_PASSWORD=$(DOCKER_PASSWORD) $(DOCKER_IMAGE_NAME)

db-stop:
	docker stop $(DOCKER_CONTAINER_NAME)

db-rm: db-stop
	docker rm $(DOCKER_CONTAINER_NAME)