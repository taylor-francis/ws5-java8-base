FROM ubuntu:16.04
MAINTAINER Taylor & Francis

# Install latest Java 8
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends openjdk-8-jre \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set JAVA_HOME required for running java
ENV JAVA_HOME /usr/lib/jvm/java-8-opendjdk-amd64