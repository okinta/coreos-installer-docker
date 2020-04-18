# README

Docker container containing a pre-compiled coreos-installer binary.

To copy `coreos-installer` to local machine:

    docker create -ti --name coreos-installer-dummy okinta/coreos-installer sh
    docker cp coreos-installer-dummy:/coreos-installer .
    docker rm -f coreos-installer-dummy
