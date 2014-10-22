# Gatling Dockerfile

This repository has single `Dockerfile` to build container with Gatling v2.0.1

# Base Docker Image

* [denvazh/gatling](https://registry.hub.docker.com/u/denvazh/gatling/)

# Installation

1. Install [Docker](https://www.docker.com/)

2. Get automated build from public registry: `docker pull denvazh/gatling`

3. [Alternatively] Build an image from Dockerfile: `docker build -t="denvazh/gatling" github.com/denvazh/gatling`

# Usage

Use image to run container

```
docker run -it --rm denvazh/gatling /bin/bash
```

Mount configuration and simulation files from host machine and run gatling in interactive mode

```
docker run -it --rm -v /home/core/gatling/conf:/opt/gatling/conf -v /home/core/gatling/user-files:/opt/gatling/user-files denvazh/gatling /opt/gatling/bin/gatling.sh
```
