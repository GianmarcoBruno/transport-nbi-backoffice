## Purpose
This repository contains the models used to validate the JSON code
in [transport-nbi](https://github.com/GianmarcoBruno/transport-nbi.git)
using the scripts in [json-yang](https://github.com/GianmarcoBruno/json-yang.git).

## Usage
Currently we want to validate models for `odu2-service` and `topology`,
in case of posting the `configuration` and getting `state`.
They currespond to a total of four scripts.

## Known issues
For both `odu2-service` and `topology`:
Currently only the JSON config data can be validated.

The other two scripts still fail.

### Error validating te-topology
In addition to the errors described previously.  
Running `run-use-case-1-topology.sh` this error is raised:  
``== Validating semantic constraints ...
XPath error : Undefined namespace prefix
xmlXPathCompOpEval: parameter error``
still to be sorted out.

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
