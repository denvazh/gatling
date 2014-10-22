FROM dockerfile/java:oracle-java8

# install gatling
RUN mkdir -p /tmp/downloads
RUN curl -sf -o /tmp/downloads/gatling-2.0.1.zip -L http://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts/2.0.1/gatling-charts-highcharts-2.0.1-bundle.zip
RUN mkdir -p /tmp/archive && cd /tmp/archive && unzip /tmp/downloads/gatling-2.0.1.zip
RUN mkdir -p /opt/gatling && mv /tmp/archive/gatling-charts-highcharts-2.0.1/* /opt/gatling

WORKDIR /data

# default command
CMD ["/bin/bash"]
