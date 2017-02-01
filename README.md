# docker-interlok-template

Just a simple template for building a docker image using gradle. It is intended for overlaying a nightly build over the latest `adaptris/interlok` (https://hub.docker.com/r/adaptris/interlok/) image but you can still use it with a formal release. Note that this example doesn't grab the latest UI; so you aren't running latest and greatest UI.

## Getting Started

* Modify build.gradle to include the optional components you require
* Add your custom config to src/main/dist/config/ as required
* `./gradlew installDist docker` which should eventually create you a docker image.