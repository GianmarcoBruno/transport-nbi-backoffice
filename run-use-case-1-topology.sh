#!/bin/bash
echo "###################################################################"
echo "ietf-te-topology has local modifications wrt to the public version."
echo "###################################################################"
../json-yang/validate ../transport-nbi/Internet-Drafts/Use-Case-1-Analysis/01/use-case-1-topology-01.json data
