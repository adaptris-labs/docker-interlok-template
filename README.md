# This is an unloved branch

You should use a gradle variant instead. 

# docker-interlok-template

Just a template for building a docker image. It is intended for overlaying a customisations over the latest [adaptris/interlok](https://hub.docker.com/r/adaptris/interlok/) docker image.

Rather than using your local ivy cache; we're going to build everything as part of the Docker build command. It's certainly workable like this, but you do end up having to do a fresh ivy resolve for each component you want. This can take a hellishly long time due to the way way in which ivy does a resolve in a fresh environment. A solution could be to have an intermediate image that contains an already resolved ivy cache (presumably in /root/.ivy2) which can be used to shortcut the fresh resolve.

# Getting started

* Modify ant/resources/ivy-interlok.xml to include your required components
* Add your custom configuration to ./config
* Modify the Dockerfile to pass in your overloaded system properties (or a build.properties to the ant directory)
  * -Dskip.swagger=true to skip swagger
  * -Dskip.nightly.ui=true to skip the download of the ui
  * -Dinterlok-core-version=XXXX to overload the version.
* `docker build . --tag myimage name`

