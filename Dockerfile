FROM python:3.9.0-alpine3.12
MAINTAINER orginux
ARG  YAMLLINT_VERSION=1.25.0
RUN pip3 install yamllint==${YAMLLINT_VERSION} && \
    rm -rf ~/.cache/pip
WORKDIR /yamllint
