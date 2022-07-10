## Base Docker Image

* [java:8-jdk-alpine](https://registry.hub.docker.com/_/java/)

## Docker Tags

* 3.2.1 (latest)

## Installation

* Install [Docker](https://www.docker.com/)

* Get automated build from public registry:

Latest version:

`docker pull ladamalina/gatling:latest`

All versions:

`docker pull ladamalina/gatling`

Specific version:

`docker pull ladamalina/gatling:3.2.1`

* [Alternatively] Build an image from Dockerfile: `docker build -t="ladamalina/gatling" github.com/ladamalina/gatling`

## Usage

Use image to run container

```
docker run -it --rm ladamalina/gatling
```

Mount configuration and simulation files from the host machine and run gatling in interactive mode

```
docker run -it --rm -v /home/core/gatling/conf:/opt/gatling/conf \
-v /home/core/gatling/user-files:/opt/gatling/user-files \
-v /home/core/gatling/results:/opt/gatling/results \
ladamalina/gatling
```

Use the `-e` switch to use JAVA_OPTS to pass parameters to gatling tests

```
docker run -e JAVA_OPTS="-Dusers=10" -it --rm ladamalina/gatling
```
