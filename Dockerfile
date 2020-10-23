FROM python:3.9.0-alpine3.12
MAINTAINER orginux
RUN pip3 install yamllint==1.25.0 && \
    rm -rf ~/.cache/pip
WORKDIR /yamllint
