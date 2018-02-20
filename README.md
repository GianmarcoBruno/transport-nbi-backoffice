## Transport-NBI backoffice
### Purpose

This repository contains the models used to validate the JSON code
in [transport-nbi](https://github.com/GianmarcoBruno/transport-nbi.git)
using the validation chain in [json-yang](https://github.com/GianmarcoBruno/json-yang.git).

These scripts perform the JSON validation:
1. `use-case-1-odu2-service-post/run.sh` the input of a POST operation representing a ODU2 service
2. `use-case-1-topology-get/run.sh` the output from a GET operation describing the topology
3. `use-case-1-odu2-service-get/run.sh` the output from a GET operation representing the ODU2 service state

Current status:  
1. validates
2. validates with this error to be sorted out  
   `== Validating semantic constraints ...  
    XPath error : Undefined namespace prefix  
    xmlXPathCompOpEval: parameter error`
3. does not validate yet

### te-topology has local modifications 
Local ietf-te-topology.yang **differs** by those extract from
draft-ietf-teas-yang-te-topo-09.txt as follows:

```
  *** ietf-te-topology@2017-06-10.yang	2017-12-04 16:01:00.619568247 +0100
***************
*** 1831,1838 ****
--- 1831,1839 ----
          uses te-node-state-derived;
        } // state
        container statistics {
          config false;
+ 	presence "";
          description
            "Statistics data.";
          uses statistics-per-node;
        } // statistics
***************
*** 1867,1874 ****
--- 1868,1876 ----
            uses geolocation-container;
          } // state
          container statistics {
            config false;
+ 	  presence "";
            description
              "Statistics data.";
            uses statistics-per-ttp;
          } // statistics
***************
*** 1931,1938 ****
--- 1933,1941 ----
          uses te-link-config;
          uses te-link-state-derived;
        } // state
        container statistics {
+         presence "";
          config false;
          description
            "Statistics data.";
          uses statistics-per-link;
```
