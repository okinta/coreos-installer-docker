FROM alpine:3.11

RUN apk add --no-cache \
        cargo \
        openssl-dev \
    && cargo install coreos-installer

FROM alpine:3.11
COPY --from=0 /root/.cargo/bin/coreos-installer /coreos-installer
