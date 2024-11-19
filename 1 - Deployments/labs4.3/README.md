# Labs 4.2

## Apply the Deployment

Launch the deployment using:

```bash
kubectl apply -f mon-deploiement.yaml
```

---

## Verify the Deployment

Check that the deployment was successfully created:

```bash
kubectl get deployments
```

---

## Inspect the Deployment

View the details of the deployment:

```bash
kubectl describe deployment mon-app
```

---

## Check Running Pods

Ensure three pods are running:

```bash
kubectl get pods
```

---

## Apply the Updated Deployment

Apply the updated deployment manifest:

```bash
kubectl apply -f mon-deploiement.yaml
```

Monitor the update process:

```bash
kubectl rollout status deployment mon-app
```

## Inspect Deployment History

View the history of deployments:

```bash
kubectl rollout history deployment mon-app
```

---

## Roll Back to a Previous Version

Undo the update and restore the previous deployment:

```bash
kubectl rollout undo deployment mon-app
```

---

By following these steps, you can create, update, validate, and roll back Kubernetes deployments declaratively.
