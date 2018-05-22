## Transport-NBI backoffice
### Purpose

This repository contains the models used to validate the JSON code
for the [transport-nbi](https://github.com/danielkinguk/transport-nbi.git) activity
using the validation chain in [json-yang](https://github.com/GianmarcoBruno/json-yang.git).
There is one directory per JSON document containing the document itself, a script and 
the set of models.

These scripts perform the JSON validation:
1. `use-case-1-odu2-service-config/run.sh` the input of a PUT operation representing a ODU2 service
2. `use-case-1-topology-data/run.sh` the output from a GET operation describing the topology
3. `use-case-1-epl-service-config/run.sh` the input from a PUT operation representing the EPL service
