#!/bin/bash
echo "###################################################################"
echo "ietf-te-topology has local modifications wrt to the public version."
echo "###################################################################"
JSON=../../transport-nbi/Internet-Drafts/Use-Case-1-Analysis/01/use-case-1-topology-01.json
echo "JSON instance: " $JSON
../../json-yang/validate $JSON data
