FROM alpine:3.17

ARG CST_VERSION=1.16.0
RUN apk add --no-cache curl \
    && curl -sSL https://storage.googleapis.com/container-structure-test/v${CST_VERSION}/container-structure-test-linux-amd64 -o /usr/local/bin/container-structure-test \
    && chmod +x /usr/local/bin/container-structure-test \
    && apk del curl
