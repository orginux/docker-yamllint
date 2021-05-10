FROM python:3.9.5-alpine3.13
LABEL maintainer="orginux"
ARG  YAMLLINT_VERSION=1.26.1
RUN pip3 install yamllint==${YAMLLINT_VERSION} && \
    rm -rf ~/.cache/pip
WORKDIR /yamllint
