#!/bin/bash
echo "###################################################################"
echo "ietf-te-topology has local modifications wrt to the public version."
echo "###################################################################"
../json-yang/validate ietf-te-topology.yang use-case-1-topology-00.json data
