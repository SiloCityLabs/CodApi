SHELL := /bin/bash

.PHONY: all build run deps clean

BINARY_NAME := codapi
GO_BUILD_FLAGS := -ldflags="-s -w" # Optional: strip debug info

all: build

deps:
	go mod download

build: deps
	go build $(GO_BUILD_FLAGS) -o $(BINARY_NAME) .

run: build
	./$(BINARY_NAME)

clean:
	go clean
	rm -f $(BINARY_NAME)