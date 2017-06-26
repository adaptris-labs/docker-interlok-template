FROM adaptris/interlok:latest

EXPOSE 8080
EXPOSE 5555

# There was a name change in 3.6 for the UI adapter-web-gui->interlok
# Delete the old one
RUN rm -f /opt/interlok/webapps/adapter-web-gui.war

ADD lib /opt/interlok/lib
ADD config /opt/interlok/config
ADD webapps /opt/interlok/webapps
