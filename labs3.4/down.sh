#!/bin/bash
kubectl delete service apache-busybox-service --ignore-not-found
kubectl delete pod apache-busybox-pod --ignore-not-found