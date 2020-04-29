# Gatling is a highly capable load testing tool.
#
# Documentation: https://gatling.io/docs/3.3/
# Cheat sheet: https://gatling.io/docs/3.3/cheat-sheet/

FROM openjdk:8-jdk-alpine

MAINTAINER Denis Vazhenin <denis.vazhenin@me.com>

RUN apk add --update wget bash libc6-compat

# gatling version
ENV GATLING_VERSION 3.3.1

# gatling user
RUN addgroup -S gatling -g 1000 && adduser -S gatling -G gatling -u 1000
USER gatling
RUN mkdir /home/gatling/gatling

# gatling home
ENV GATLING_HOME /home/gatling/gatling
WORKDIR  $GATLING_HOME

# install gatling
RUN mkdir -p /tmp/downloads && \
    wget --show-progress --progress=bar:force -q -O /tmp/downloads/gatling-$GATLING_VERSION.zip https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/$GATLING_VERSION/gatling-charts-highcharts-bundle-$GATLING_VERSION-bundle.zip
RUN mkdir -p /tmp/archive && \
    unzip /tmp/downloads/gatling-$GATLING_VERSION.zip -d /tmp/archive && \
    mv /tmp/archive/gatling-charts-highcharts-bundle-$GATLING_VERSION/* $GATLING_HOME/ && \
    rm -rf /tmp/*
ENV PATH $GATLING_HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# set directories below to be mountable from host
VOLUME ["$GATLING_HOME/conf", "$GATLING_HOME/results", "$GATLING_HOME/user-files"]

ENTRYPOINT ["gatling.sh"]
