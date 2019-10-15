#!/bin/bash -i

# usage: run.sh

# validates
#validate -w data -j mpi1-epl-service-config.json -f

# currently does not validate
validate -w data -j mpi1-epl-service-config.json -f -s yanglint
