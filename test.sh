#!/bin/bash

# set variables
path_to_collection_file="F:\OEPostmanAPITest\APIPostmanTest\collection.json"
path_to_environment_file="F:\OEPostmanAPITest\APIPostmanTest\environment.json"
your_project_code="OET"
your_api_token="662083c9ecc566fd0cb6798b3838e3a5d7c30507178190a9b5f7ac36d7f65562"
your_run_id="28"
your_base_path="https://api.qase.io/v1"
your_run_name="My Postman Collection"
your_run_description="A test run of my Postman Collection"
your_root_suite_title="API Postman autotests"
your_qase_logging_level="info"

# run newman reporter
newman run "$path_to_collection_file" \
    --environment "$path_to_environment_file" \
    -r qase true \
    --reporter-qase-logging "$your_qase_logging_level" \
    --reporter-qase-projectCode "$your_project_code" \
    --reporter-qase-apiToken "$your_api_token" \
    --reporter-qase-runId "$your_run_id" \
    --reporter-qase-basePath "$your_base_path" \
    --reporter-qase-runName "$your_run_name" \
    --reporter-qase-runDescription "$your_run_description" \
    --reporter-qase-rootSuiteTitle "$your_root_suite_title"

$SHELL