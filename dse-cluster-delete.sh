#!/usr/bin/env bash

# PIPELINE_NAME="fedex-cicd"
# JOB_ID="311"

kubectl delete statefulSet "$PIPELINE_NAME-$JOB_ID"
kubectl delete service "$PIPELINE_NAME-$JOB_ID"