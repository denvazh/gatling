# Gatling Dockerfile

This repository has single `Dockerfile` to build container with Gatling.

# Base Docker Image

* [java](https://registry.hub.docker.com/_/java/)

# Installation

* Install [Docker](https://www.docker.com/)

* Get automated build from public registry: 

Latest version:

`docker pull denvazh/gatling:latest`

All versions:

`docker pull denvazh/gatling`

Specific version:

`docker pull denvazh/gatling:2.1.5`

* [Alternatively] Build an image from Dockerfile: `docker build -t="denvazh/gatling" github.com/denvazh/gatling`

# Usage

Use image to run container

```
docker run -it --rm denvazh/gatling
```

Mount configuration and simulation files from host machine and run gatling in interactive mode

```
docker run -it --rm -v /home/core/gatling/conf:/opt/gatling/conf \
-v /home/core/gatling/user-files:/opt/gatling/user-files \
-v /home/core/gatling/results:/opt/gatling/results \
denvazh/gatling
```
