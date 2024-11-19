#!/bin/bash
kubectl apply -f apache-busybox.yaml
kubectl expose pod  apache-busybox-pod --type=LoadBalancer --name=apache-busybox-service --port=80 --target-port=80
kubectl get service apache-busybox-service