#!/bin/bash
echo "###################################################################"
echo "ietf-te-topology has local modifications wrt to the public version."
echo "###################################################################"
../../validate ietf-te-topology.yang use-case-1-topology-00.json data
