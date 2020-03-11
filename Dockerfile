FROM adaptris/interlok-base:snapshot-zulu

EXPOSE 8080
EXPOSE 5555

RUN rm -f /opt/interlok/lib/adp-*.jar

COPY lib /opt/interlok/lib
COPY webapps /opt/interlok/webapps
COPY config /opt/interlok/config
