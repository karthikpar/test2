#
#   Copyright 2015  Xebia Nederland B.V.
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
#REGISTRY_HOST=docker.io
#USERNAME=$(USER)
#NAME=$(shell basename $(CURDIR))

#RELEASE_SUPPORT := $(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))/.make-release-support
#IMAGE=$(REGISTRY_HOST)/$(USERNAME)/$(NAME)

#VERSION=$(shell . $(RELEASE_SUPPORT) ; getVersion)
#TAG=$(shell . $(RELEASE_SUPPORT); getTag)
APP_NAME=myapp
SHELL=/bin/bash
ECS_LOGIN =$(shell aws ecr get-login)
#DOCKER_BUILD_CONTEXT=.
#DOCKER_FILE_PATH=Dockerfile

.PHONY: pre-build post-build 

build: pre-build docker-build post-build

pre-build:
	@echo $(AWS_REGION)
	@$(ECS_LOGIN)
	
post-build:
	

pre-push:


post-push:



docker-build:
	







