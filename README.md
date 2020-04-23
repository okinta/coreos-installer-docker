# README

Docker container containing a pre-compiled coreos-installer binary.

Binary releases for Alpine and Ubuntu can be found on the [releases][1] tab.

[1]: https://github.com/okinta/coreos-installer-docker/releases

## Obtaining Binaries via Docker

Instead of downloading the binaries, you can obtain them via docker.

To copy `coreos-installer` for Alpine to local machine:

    docker create -ti --name coreos-installer-dummy okinta/coreos-installer:alpine sh
    docker cp coreos-installer-dummy:/coreos-installer .
    docker rm -f coreos-installer-dummy

To copy `coreos-installer` for Ubuntu to local machine:

    docker create -ti --name coreos-installer-dummy okinta/coreos-installer:ubuntu sh
    docker cp coreos-installer-dummy:/coreos-installer .
    docker rm -f coreos-installer-dummy
