#!/bin/bash

# usage: run.sh
# override defaults: e.g.
# FETCH=y ./run.sh

JSON=mpi1-otn-topology.json
echo "JSON instance: " $JSON

if [ -z "$FETCH" ]
then
   echo 'will use local models for validation'
else
   echo 'will download models from the network'
   ../../json-yang/scripts/fetchModels $JSON
fi

../../json-yang/validate $JSON data
