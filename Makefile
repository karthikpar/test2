# import config.
# You can change the default config with `make cnf="config_special.env" build`
#cnf ?= config.env
#include $(cnf)
#export $(shell sed 's/=.*//' $(cnf))

# import deploy config
# You can change the default deploy config with `make cnf="deploy_special.env" release`
#dpl ?= deploy.env
#include $(dpl)
#export $(shell sed 's/=.*//' $(dpl))

# grep the version from the mix file
#VERSION=$(shell ./version.sh)
APP_NAME=myapp

# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: build

#help: ## This help.
#	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

#.DEFAULT_GOAL := help


# DOCKER TASKS
# Build the container
build: ## Build the container
            
            @echo $(AWS_REGION)
            
            
	    docker build -t $(APP_NAME) .
