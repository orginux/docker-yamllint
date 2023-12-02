FROM python:3.11.6-alpine3.18
LABEL maintainer="orginux"
ARG  YAMLLINT_VERSION=1.33.0
RUN <<EOF
        pip3 install yamllint==${YAMLLINT_VERSION}
        rm -rf ~/.cache/pip
EOF
WORKDIR /yamllint
