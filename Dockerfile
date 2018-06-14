FROM alpine:latest

LABEL maintainer="Michele Adduci <info@micheleadduci.net>"

VOLUME "/project"

WORKDIR "/project"

RUN apk update && \
    apk upgrade && \
    apk --update add \
        gcc \
        g++ \
        build-base \
        cmake \
        bash \
        libstdc++ \
        cppcheck \
        py-pip && \
        pip install conan && \
    rm -rf /var/cache/apk/*

ENTRYPOINT [ "bash", "-c" ]
