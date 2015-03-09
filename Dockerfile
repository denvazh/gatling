# Gatling 2.1.4

FROM dockerfile/java:oracle-java8

# working directory for gatling
WORKDIR /opt

# create directory for gatling install
RUN mkdir -p gatling

# install gatling
RUN mkdir -p /tmp/downloads && \
  curl -sf -o /tmp/downloads/gatling-2.1.4.zip \
  -L https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/2.1.4/gatling-charts-highcharts-bundle-2.1.4-bundle.zip && \
  mkdir -p /tmp/archive && cd /tmp/archive && \
  unzip /tmp/downloads/gatling-2.1.4.zip && \
  mv /tmp/archive/gatling-charts-highcharts-bundle-2.1.4/* /opt/gatling/

# change context to gatling directory
WORKDIR  /opt/gatling

# set directories below to be mountable from host
VOLUME ["/opt/gatling/conf","/opt/gatling/results","/opt/gatling/user-files"]

# set environment variables
ENV PATH /opt/gatling/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV GATLING_HOME /opt/gatling

CMD ["gatling.sh"]