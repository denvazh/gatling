# Base Docker Image

* [java:8-jdk-alpine](https://registry.hub.docker.com/_/java/)

# Docker Tags

* 2.0.0-RC1
* 2.0.0-RC2
* 2.0.0-RC3
* 2.0.0-RC4
* 2.0.0-RC5
* 2.0.0-RC6
* 2.0.0
* 2.0.1
* 2.0.2
* 2.0.3
* 2.1.0
* 2.1.1
* 2.1.2
* 2.1.3
* 2.1.4
* 2.1.5
* 2.1.6
* 2.1.7
* 2.2.0-M1
* 2.2.0-M2
* 2.2.0-M2
* 2.2.0
* 2.2.1
* 2.2.2
* 2.2.3
* 2.2.4
* 2.2.5
* 2.3.0 (latest)

[![CircleCI](https://circleci.com/gh/denvazh/gatling/tree/master.svg?style=svg)](https://circleci.com/gh/denvazh/gatling/tree/master)
[![](https://images.microbadger.com/badges/image/denvazh/gatling.svg)](http://microbadger.com/images/denvazh/gatling "Get your own image badge on microbadger.com")

Note: Gatling versions from 2.1.0 onwards are built with Scala 2.11.

# Installation

* Install [Docker](https://www.docker.com/)

* Get automated build from public registry:

Latest version:

`docker pull denvazh/gatling:latest`

All versions:

`docker pull denvazh/gatling`

Specific version:

`docker pull denvazh/gatling:2.3.0`

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

Use the -e switch to use JAVA_OPTS to pass parameters to gatling tests

```
docker run -e JAVA_OPTS="-Dusers=10" -it --rm denvazh/gatling
```
