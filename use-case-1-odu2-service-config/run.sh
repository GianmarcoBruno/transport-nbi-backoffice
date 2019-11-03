#!/bin/bash -i

# currently we need ietf-otn-tunnel module with local modifications because it is broken

# fail on purpose using only the downloaded model
rm -rf target downloads
validate -w data -j mpi1-odu2-service-config.json -m downloads -f -p

# validate successfully fetching and then using overridden model
rm -rf target downloads
validate -w data -j mpi1-odu2-service-config.json -m downloads -m overrides -f

# validate successfully using downloaded models and the overridden model
rm -rf target
validate -w data -j mpi1-odu2-service-config.json -m downloads -m overrides
