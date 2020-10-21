#!/bin/sh

FHIR_ENDPOINT_URL=$1
FHIR_VERSION=$2

bundle exec rake crucible:execute_all[$FHIR_ENDPOINT_URL,$FHIR_VERSION,true] > logs/execute_all.log 2>&1

./print_results.sh logs/execute_all.log
