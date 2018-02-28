#!/bin/bash
JSON=use-case-1-odu2-service-01-config.json
echo "JSON instance: " $JSON
../../json-yang/validate $JSON config
