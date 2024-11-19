# Labs 4.2

## 0. See all ressources used by Kubernetes

```sh
watch kubectl get all -o wide
```

## 1. Create a Deployment

Create a deployment named `nginx-deployment` with 2 replicas using the NGINX image version 1.14.2:

```sh
kubectl create deployment nginx-deployment --image=nginx:1.14.2 --replicas=2
```

---

## 2. Verify the Deployment

Ensure the deployment has been created correctly:

```sh
kubectl get deployments
```

---

## 3. Expose the Deployment as a Service

Expose the `nginx-deployment` as a service to make it accessible on port 80:

```sh
kubectl expose deployment nginx-deployment --type=LoadBalancer --port=80
```

---

## 4. Verify the Service

Verify that the service has been exposed:

```sh
kubectl get services
```

---

## 5. Update the Deployment

Update the deployment to use NGINX version 1.16.1:

```sh
kubectl set image deployment/nginx-deployment nginx=nginx:1.16.1
```

Verify the rollout of the updated deployment:

```sh
kubectl rollout status deployment/nginx-deployment
```

---

## 6. Scale the Deployment

Scale the deployment to 4 replicas:

```sh
kubectl scale deployment nginx-deployment --replicas=4
```

Verify the scaling operation:

```sh
kubectl get deployments
```

---

## 7. Clean Up

Delete the service and deployment to clean up resources:

```sh
kubectl delete service nginx-deployment
kubectl delete deployment nginx-deployment
```

---

By following these steps, you can manage the lifecycle of a Kubernetes deployment declaratively.
