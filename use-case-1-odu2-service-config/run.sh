#!/bin/bash -i

# currently we need a module with local modifications because it is broken

# so if you run from scratch
# validate -w data -j mpi1-odu2-service-config.json -s yanglint -y downloads -v -f
# then revert to use local modificationsA
# git checkout -- downloads/ietf-otn-tunnel@2019-07-08.yang
# and run again
# validate -w data -j mpi1-odu2-service-config.json -s yanglint -y downloads -v -f

# if you have already downloaded models, just:
validate -w data -j mpi1-odu2-service-config.json -s yanglint -k -y downloads
