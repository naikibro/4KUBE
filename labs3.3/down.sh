#!/bin/bash
POD_NAME="busybox-pod"
SERVICE_NAME="busybox-pod"
NAMESPACE="default" 
kubectl delete service $SERVICE_NAME --namespace $NAMESPACE
kubectl delete pod $POD_NAME --namespace $NAMESPACE