# docker-interlok-template

Just a simple template for building a docker image using gradle. It is intended for overlaying a nightly build over the latest `adaptris/interlok` (https://hub.docker.com/r/adaptris/interlok/) image but you can still use it with a formal release.

## Getting Started

* Modify build.gradle to include the optional components you require
* Add your custom config to src/main/dist/config/ as required
* `./gradlew docker` which should eventually create you a docker image.
* Note that the appropriate interlok.war is also downloaded and copied into the distribution
    * If you don't want the UI, then you'll need to modify the Dockerfile and the build script
