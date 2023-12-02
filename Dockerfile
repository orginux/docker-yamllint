FROM python:3.11.6-alpine3.18
LABEL maintainer="orginux"
ARG  YAMLLINT_VERSION=1.33.0
RUN pip3 install --no-cache-dir yamllint==${YAMLLINT_VERSION}
WORKDIR /yamllint
