#!/bin/sh -l

export FEATURES_LEVEL_LOG="$1"

/app/stackspot-runtime-job-iac start --input-path="$2"
