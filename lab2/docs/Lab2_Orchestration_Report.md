# Lab 2: Containerization and Orchestration Report

## Architecture

Docker packages the Node.js application. Minikube provides the local Kubernetes cluster. Deployment manages replicas; Service (NodePort) exposes the app.

Flow: Dockerfile → docker build → Deployment manifest → kubectl apply → pods on Minikube → Service routes traffic.

## Deployment Strategy

Default RollingUpdate strategy. Updates replace pods gradually while keeping the service available. Scaling from 2 to 5 replicas completed in under a minute.

Rollback demonstrated with `kubectl rollout undo` after a intentionally broken image.

## Observations

Minikube is convenient for the lab but uses noticeable resources. Once images are local, updates are fast. YAML manifests make desired state clear and version-controlled. Screenshots of pod lists, rollout status, and the running application are available in the evidence folder.
