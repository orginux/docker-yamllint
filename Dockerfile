FROM python:3.10.0-alpine3.14
LABEL maintainer="orginux"
ARG  YAMLLINT_VERSION=1.30.0
RUN pip3 install yamllint==${YAMLLINT_VERSION} && \
    rm -rf ~/.cache/pip
WORKDIR /yamllint
