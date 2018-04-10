# -*- conf -*-

FROM golang:1.9

RUN apt-get update && \
    apt-get install -y --no-install-recommends musl-tools libklibc-dev make && \
    apt-get clean && find /var/lib/apt/lists -type f -print0 | xargs -r0 rm -v
