FROM debian:stretch-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends musl-tools make && \
    apt-get clean && find /var/lib/apt/lists -type f -print0 | xargs -r0 rm -v
