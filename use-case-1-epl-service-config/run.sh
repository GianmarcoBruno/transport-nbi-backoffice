#!/bin/bash -i

# usage: run.sh

# validates
validate -w data -j mpi1-epl-service-config.json -m downloads -s yanglint -v -f
