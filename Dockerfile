FROM alpine:3.12 as builder

RUN apk add --update bash && rm -rf /var/cache/apk/*

user root
RUN mkdir -p /web
RUN truncate -s 5M /web/5m.txt && \
    truncate -s 50M /web/50m.txt && \ 
    truncate -s 100M /web/100m.txt && \
    truncate -s 200M /web/200m.txt && \
    truncate -s 500M /web/500m.txt && \
    truncate -s 1G /web/1g.txt


# https://github.com/halverneus/static-file-server   
FROM halverneus/static-file-server:latest

# The base image of this is scratch, so it cannot use shell command.
# Files are created from another container (alpine:3.12).
COPY --from=builder /web /web
