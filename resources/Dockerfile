FROM adaptris/interlok:latest

EXPOSE 8080
EXPOSE 5555

ADD lib /opt/interlok/lib
ADD config /opt/interlok/config
ADD webapps /opt/interlok/webapps

ENTRYPOINT ["/opt/interlok/bin/adapter"]
