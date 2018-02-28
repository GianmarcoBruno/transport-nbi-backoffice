## Transport-NBI backoffice
### Purpose

This repository contains the models used to validate the JSON code
for the [transport-nbi](https://github.com/danielkinguk/transport-nbi.git) activity
using the validation chain in [json-yang](https://github.com/GianmarcoBruno/json-yang.git).
There is one directory per JSON document containing the document itself, a script and 
the set of models.

These scripts perform the JSON validation:
1. `use-case-1-odu2-service-post/run.sh` the input of a POST operation representing a ODU2 service
2. `use-case-1-topology-get/run.sh` the output from a GET operation describing the topology
3. `use-case-1-odu2-service-get/run.sh` the output from a GET operation representing the ODU2 service state

Current status:  
1. validates
2. validates
3. does not validate yet: error is  
    `error: element "nc:data" incomplete; missing required element "rt:routing-state"`

