FROM debian:bullseye-slim

LABEL maintainer "jaycuse@fastmailfm"

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    python &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY main.sh /
RUN mkdir /www

ENV HTTP_PORT=80
EXPOSE $HTTP_PORT

WORKDIR /www

ENTRYPOINT ["/main.sh"]

