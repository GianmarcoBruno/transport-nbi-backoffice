## Transport-NBI backoffice
### Purpose

This repository contains the models used to validate the JSON code
for the [transport-nbi](https://github.com/danielkinguk/transport-nbi.git) activity
using the validation chain in [json-yang](https://github.com/GianmarcoBruno/json-yang.git).
There is one directory per JSON document containing the document itself and a `run.sh` script.  
Validation can be made either with:  
`FETCH=y ./run.sh` to fetch the YANG models from the network if they have been properly annotated, or just:  
`./run.sh` if the models are already downloaded locally.

Currently you can find:
- `use-case-1-odu2-service-config` the input of a PUT operation representing a ODU2 service
- `use-case-1-topology-data` the output from a GET operation describing the topology
- `use-case-1-epl-service-config` the input from a PUT operation representing the EPL service
