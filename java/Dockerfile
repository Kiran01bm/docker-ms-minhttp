FROM adoptopenjdk/openjdk11

ARG NEWRELIC_LICENSEKEY
ARG DD_LICENSEKEY

LABEL maintainer="kiran01bm"

## New Relic Config Block
ENV NEW_RELIC_HOME=/opt/newrelic
ENV NEW_RELIC_APP_NAME="HelloWorldJava"
ADD newrelic/config.yaml $NEW_RELIC_HOME/newrelic.yml
ENV NEWRELIC_AGENT $NEW_RELIC_HOME/newrelic.jar
ENV NEWRELIC_VERSION=6.5.3
ENV NEW_RELIC_LICENSE_KEY=$NEWRELIC_LICENSEKEY
ADD https://download.newrelic.com/newrelic/java-agent/newrelic-agent/$NEWRELIC_VERSION/newrelic-agent-$NEWRELIC_VERSION.jar $NEWRELIC_AGENT
RUN chmod a+r $NEWRELIC_AGENT

## DD Config Block
ENV DATADOG_HOME=/opt/dd
ENV DD_ENV=development
ENV DD_SERVICE="HelloWorldJava"
ENV DD_PROFILING_ENABLED=true
ENV DD_AGENT $DATADOG_HOME/dd-java-agent.jar
ADD https://dtdg.co/latest-java-tracer $DD_AGENT

# App workdir
WORKDIR /usr/apps/helloworld

# Copy application source
COPY . .

# Boot up the App
CMD bin/run.sh
