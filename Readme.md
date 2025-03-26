# Docker Devbox

This project provides a Dockerized development environment using Ubuntu 24.04, Nix, and Devbox. 

## Features

- **Base Image**: Ubuntu 24.04
- **Nix Package Manager**: Version 2.24.7
- **Devbox**: Version 0.13.7
- **Pre-installed Packages**:
  - `git` (version 2.47.1)
  - `nushell` (version 0.101.0)

## Usage

This image is itented to be used as a base image for your development environment. You can use it in your `Dockerfile` like this:

```Dockerfile
FROM ghcr.io/robsoned/docker-devbox:latestdevbox:latest
```