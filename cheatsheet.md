# Cheatsheet - Best Commands (Unix Only)

## General Resource Management

- Get all resources (pods, services, deployments, etc.) with wide output:

  ```bash
  kubectl get all -o wide
  ```

- Watch resource updates in real-time:
  ```bash
  kubectl get all -o wide -w
  ```

---

## Pods

- List all pods:

  ```bash
  kubectl get pods
  ```

- Get detailed information about a pod:

  ```bash
  kubectl describe pod <pod-name>
  ```

- Show logs of a specific pod:

  ```bash
  kubectl logs <pod-name>
  ```

- Show logs of a specific container in a pod:

  ```bash
  kubectl logs <pod-name> -c <container-name>
  ```

- Execute a command in a running pod:
  ```bash
  kubectl exec -it <pod-name> -- <command>
  ```

---

## Services

- List all services:

  ```bash
  kubectl get services
  ```

- Describe a service:

  ```bash
  kubectl describe service <service-name>
  ```

- Expose a pod as a service:
  ```bash
  kubectl expose pod <pod-name> --type=LoadBalancer --port=<port> --target-port=<container-port>
  ```

---

## Deployments

- List all deployments:

  ```bash
  kubectl get deployments
  ```

- Describe a deployment:

  ```bash
  kubectl describe deployment <deployment-name>
  ```

- Apply a deployment manifest:

  ```bash
  kubectl apply -f <deployment-file.yaml>
  ```

- Check rollout status of a deployment:

  ```bash
  kubectl rollout status deployment <deployment-name>
  ```

- Update an image in a deployment:

  ```bash
  kubectl set image deployment/<deployment-name> <container-name>=<image>:<tag>
  ```

- Scale a deployment:

  ```bash
  kubectl scale deployment <deployment-name> --replicas=<number>
  ```

- Undo the last deployment update:

  ```bash
  kubectl rollout undo deployment <deployment-name>
  ```

- View rollout history:
  ```bash
  kubectl rollout history deployment <deployment-name>
  ```

---

## Debugging and Monitoring

- View logs of a crashing pod:

  ```bash
  kubectl logs <pod-name> --previous
  ```

- Debug a node or pod with a temporary busybox container:

  ```bash
  kubectl run debug --rm -it --image=busybox -- /bin/sh
  ```

- Check cluster events:
  ```bash
  kubectl get events
  ```

---

## Namespace Management

- List all namespaces:

  ```bash
  kubectl get namespaces
  ```

- Create a new namespace:

  ```bash
  kubectl create namespace <namespace-name>
  ```

- Use a specific namespace:
  ```bash
  kubectl config set-context --current --namespace=<namespace-name>
  ```

---

## Resource Cleanup

- Delete a pod:

  ```bash
  kubectl delete pod <pod-name>
  ```

- Delete a service:

  ```bash
  kubectl delete service <service-name>
  ```

- Delete a deployment:

  ```bash
  kubectl delete deployment <deployment-name>
  ```

- Delete resources defined in a manifest:
  ```bash
  kubectl delete -f <manifest-file.yaml>
  ```

---

## Additional Useful Commands

- Apply changes to a resource:

  ```bash
  kubectl apply -f <resource-file.yaml>
  ```

- Get cluster information:

  ```bash
  kubectl cluster-info
  ```

- View the current Kubernetes configuration:

  ```bash
  kubectl config view
  ```

- Test Kubernetes API accessibility:
  ```bash
  kubectl proxy
  ```

---

**Year:** 2024-2025
