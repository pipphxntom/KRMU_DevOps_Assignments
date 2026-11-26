# KRMU DevOps Assignments

Repository for Lab 1 (DevOps Foundations & Continuous Integration), Lab 2 (Containerization & Kubernetes Orchestration), and Lab 3 (Monitoring, Logging & DevSecOps).

## Structure

- `lab1/` — Jenkins CI/CD pipeline for a simple Node.js app
- `lab2/` — Docker containerization + Kubernetes (Minikube) deployment
- `lab3/` — Ansible, Terraform, Prometheus, ELK, and DevSecOps practices

## Lab 1

Sample Node.js Express application with a declarative Jenkinsfile that performs Build → Test → Deploy stages.

## Lab 2

- Dockerfile for the same application
- docker-compose.yml for multi-container setup
- Kubernetes Deployment, Service, and ConfigMap manifests

## Lab 3

- Ansible playbook for application configuration
- Terraform configuration for infrastructure definition
- Prometheus scrape config
- Documentation covering monitoring, centralized logging, security scanning, feature flags, load testing, and Selenium

All reports and observations are in the respective `docs/` folders.
