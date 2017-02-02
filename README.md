# docker-interlok-template

Just a simple template for building a docker image using ANT. It is intended for overlaying a nightly build over the latest `adaptris/interlok` (https://hub.docker.com/r/adaptris/interlok/) image but you can still use it with a formal release. There are other ways of building the docker image, but this is the simplest if you are already working with interlok as you are likely to already have an ivy cache in place.

## Getting Started

* Modify resources/ivy/ivy.xml to include the optional components you require
* Add your custom config to resources/config/ as required
  * -Dadp-core-version=XXXX if you don't want the snapshot.
  * -Ddocker.image.tag=XXXX if you don't like the generated name (${user.name}/${ant.project.name})
  * -Dskip.nightly.ui=true if you don't want the nightly UI build
  * -Dskip.swagger=true if you don't want swagger
* `ant docker` which should eventually create you a docker image.