# syntax=docker/dockerfile:1
FROM ubuntu:24.04

ENV DEVBOX_USE_VERSION=0.13.7 \
    NIX_VERSION=2.24.7
    
ARG WORKDIR=/app \
    DEVBOX_PACKAGES=git@2.47.1 nushell@0.101.0

RUN apt-get update && apt-get install -y curl xz-utils sudo

WORKDIR ${WORKDIR}

RUN curl -L https://releases.nixos.org/nix/nix-${NIX_VERSION}/install | sh -s -- --daemon

RUN curl -fsSL https://get.jetify.com/devbox | FORCE=1 bash \
    && devbox global add ${DEVBOX_PACKAGES} \
    && devbox global install \
    && echo 'eval "$(devbox global shellenv)"' >> ~/.bashrc