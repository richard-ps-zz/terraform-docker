SHELL = /bin/bash

image = richardps/terragrunt-docker
version = 0.0.1

.PHONY: build
build:
	docker build -t $(image) .

.PHONY: push
push: 
	docker push $(image)

.PHONY: bash
bash: 
	docker run -it $(image) /bin/bash
