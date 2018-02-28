#!/bin/bash
JSON=use-case-1-odu2-service-01.json
echo "JSON instance: " $JSON
../../json-yang/validate $JSON data
