#!/bin/bash
kubectl apply -f busybox.yaml
kubectl expose pod busybox-pod --type=LoadBalancer --port=8080
kubectl get service busybox-pod 
