FROM adaptris/interlok:latest

EXPOSE 8080
EXPOSE 5555

# There was a change from adapter-web-gui.war -> interlok.war
# So let's delete the old one
RUN rm -f /opt/interlok/webapps/adapter-web-gui.war && \
    rm -f /opt/interlok/lib/adp-*.jar

ADD lib /opt/interlok/lib
ADD config /opt/interlok/config
ADD webapps /opt/interlok/webapps
