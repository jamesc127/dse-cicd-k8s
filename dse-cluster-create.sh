#!/usr/bin/env bash

# PIPELINE_NAME="fedex-cicd"
# JOB_ID="311"
if [ -z "$1" ]; then 
    VERSION="6.0.5"
fi
if [ "$1" ]; then
    VERSION=$1
fi

cat ./k8s/dse-60.cluster.yaml | sed "s/{{VERSION}}/$VERSION/g" | sed "s/{{PIPELINE_NAME}}/$PIPELINE_NAME/g" | sed "s/{{JOB_ID}}/$JOB_ID/g" | kubectl apply -f -