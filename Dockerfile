FROM alpine:3.7

LABEL maintainer="info@micheleadduci.net"

VOLUME ["/project"]

WORKDIR ["/project"]

RUN apk update && \
    apk upgrade && \
    apk --update add \
        gcc \
        g++ \
        build-base \
        cmake \
        bash \
        libstdc++ \
        py-pip && \
        pip install conan && \
    rm -rf /var/cache/apk/* 

ENTRYPOINT [ "bash" ]