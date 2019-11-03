#!/bin/bash -i

# usage: run.sh

# validates
validate -w data -j mpi1-eth-topology.json -m downloads -m overrides -s yanglint -f -v
