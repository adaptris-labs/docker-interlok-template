# docker-interlok-template

Just a simple template for building a docker image using ANT. It is intended for overlaying a customisations over the latest `adaptris/interlok` (https://hub.docker.com/r/adaptris/interlok/) image. There are other ways of building the docker image...

## Getting Started

* Modify resources/ivy/ivy.xml to include the optional components you require
* Add your custom config to resources/config/ as required
* `ant docker` which should eventually create you a docker image.
  * -Dinterlok-core-version=XXXX if you don't want the snapshot.
  * -Ddocker.image.tag=XXXX if you don't like the generated name (${user.name}/${ant.project.name})
  * -Dskip.nightly.ui=true if you don't want the nightly UI build
  * -Dskip.swagger=true if you don't want swagger
