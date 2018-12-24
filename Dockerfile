FROM debian:stretch-slim

MAINTAINER Richard Pereira e Silva <richard.ufsc@gmail.com>

ENV TERRAGRUNT_VERSION=1.2.3
ENV TERRAGRUNT_TFPATH=/usr/local/bin/terraform
ENV TERRAFORM_VERSION=0.11.11

RUN apt-get update
RUN apt-get -y install curl unzip vim

ADD https://github.com/coveo/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_${TERRAGRUNT_VERSION}_linux_64-bits.zip /tmp
RUN unzip /tmp/terragrunt_${TERRAGRUNT_VERSION}_linux_64-bits.zip -d /bin && \
    rm /tmp/terragrunt_${TERRAGRUNT_VERSION}_linux_64-bits.zip

ADD https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip /tmp/
RUN unzip /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin/ && \
    rm /tmp/terraform_${TERRAFORM_VERSION}_linux_amd64.zip