#!/bin/bash

# usage: run.sh
# override defaults: e.g.
# FETCH=y ./run.sh

JSON=mpi1-odu2-service-config.json
echo "JSON instance: " $JSON
../../json-yang/validate $JSON data
