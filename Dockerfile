# -*- conf -*-

# we could use alpine...

#FROM alpine
#RUN apk add --no-cache gcc libc-dev make

# but ... we use Debian for now as it's not that large and comes with
# more things we'll use later
FROM debian:stretch-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends musl-tools make && \
    apt-get clean && find /var/lib/apt/lists -type f -print0 | xargs -r0 rm -v
