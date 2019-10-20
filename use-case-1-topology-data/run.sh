#!/bin/bash -i

#validate -w data -j mpi1-otn-topology.json -f
validate -w data -j mpi1-otn-topology.json -s yanglint -y downloads -v -f
