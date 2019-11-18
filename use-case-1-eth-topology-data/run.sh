#!/bin/bash -i

# usage: run.sh

# validates
validate -w data -j mpi1-eth-topology.json -m downloads -s yanglint -f -v
