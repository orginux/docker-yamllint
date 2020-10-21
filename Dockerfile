FROM python:3.9-alpine
MAINTAINER orginux
RUN pip3 install yamllint==1.25.0
WORKDIR /yamllint
