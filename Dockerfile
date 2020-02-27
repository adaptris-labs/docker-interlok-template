FROM adaptris/interlok:latest-alpine

EXPOSE 8080
EXPOSE 5555

RUN rm -f /opt/interlok/lib/adp-*.jar

ADD ./build/docker/lib /opt/interlok/lib
ADD ./build/docker/webapps /opt/interlok/webapps
ADD ./build/docker/config /opt/interlok/config
