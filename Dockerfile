FROM adaptris/interlok:latest

EXPOSE 8080
EXPOSE 5555

ADD lib /opt/interlok/lib
ADD config /opt/interlok/config

ENTRYPOINT ["/opt/interlok/bin/adapter"]
