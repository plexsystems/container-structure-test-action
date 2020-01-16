FROM alpine:3.11.2

RUN apk add curl

RUN curl -LO https://storage.googleapis.com/container-structure-test/v1.8.0/container-structure-test-linux-amd64 \
    && chmod +x container-structure-test-linux-amd64 \
    && mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test
