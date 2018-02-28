#!/bin/bash
echo "###################################################################"
echo "ietf-te-topology has local modifications wrt to the public version."
echo "###################################################################"
JSON=use-case-1-topology-01.json
echo "JSON instance: " $JSON
../../json-yang/validate $JSON data
