## Purpose
This repository contains the models used to validate the JSON code
in ../transport-nbi using the scripts in ../json-yang.

## Usage
Just run the shell scripts.

## Known issues:

### Error validating te-topology
Running ``run-use-case-1-topology.sh`` we get this error
``== Validating semantic constraints ...
XPath error : Undefined namespace prefix
xmlXPathCompOpEval: parameter error``
still to be sorted out.

### te-topology has local modifications 
Local ietf-te-topology.yang differs by those extract from
draft-ietf-teas-yang-te-topo-09.txt as follows:

  *** ietf-te-topology@2017-06-10.yang	2017-12-04 16:01:00.619568247 +0100
--- ../transport-nbi-backoffice/ietf-te-topology@2017-06-10.yang	2017-12-04 15:32:55.429465081 +0100
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
