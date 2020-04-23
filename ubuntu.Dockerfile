FROM ubuntu:18.04

RUN apt update && apt install -y \
    cargo \
    libssl-dev \
    pkg-config \
    && cargo install coreos-installer

FROM ubuntu:18.04
COPY --from=0 /root/.cargo/bin/coreos-installer /coreos-installer
