#!/bin/bash
JSON=../../../rvilalta/transport-nbi/Internet-Drafts/Use-Case-1-Analysis/01/use-case-1-odu2-service-01-config.json
echo "JSON instance: " $JSON
../../json-yang/validate $JSON config
