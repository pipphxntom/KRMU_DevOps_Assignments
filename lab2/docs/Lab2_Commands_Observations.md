# Lab 2: Docker and Kubernetes Commands & Observations

## Key Docker Commands

```bash
docker build -t shwetank/devops-app:v1 .
docker run -d -p 3000:3000 --name app1 shwetank/devops-app:v1
docker ps
docker stop app1 && docker rm app1
docker tag shwetank/devops-app:v1 shwetank/devops-app:latest
docker push shwetank/devops-app:v1
docker compose up -d
docker volume create app-data
docker network create app-net
```

## Kubernetes Commands

```bash
minikube start --driver=docker
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml
kubectl get pods
kubectl scale deployment devops-app --replicas=5
kubectl set image deployment/devops-app devops-app=shwetank/devops-app:v2
kubectl rollout status deployment/devops-app
kubectl rollout undo deployment/devops-app
kubectl rollout history deployment/devops-app
```

## Storage & Network Notes

- Container-layer data is lost on `docker rm`.
- Named volumes and bind mounts persist data correctly.
- Custom bridge network allows name-based communication between containers (`ping web` from another container on the same network).

All manifests and the Dockerfile are committed in this repository.
