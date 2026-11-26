# KRMU DevOps Assignments

Repository for Lab 1 through Lab 4 (DevOps Foundations, Containerization & Kubernetes, Monitoring/Logging/DevSecOps, and Advanced Deployment Strategies).

## Structure

- `lab1/` — Jenkins CI/CD pipeline for a simple Node.js app
- `lab2/` — Docker containerization + Kubernetes (Minikube) deployment
- `lab3/` — Ansible, Terraform, Prometheus, ELK, and DevSecOps practices
- `lab4/` — Blue-Green, Canary, GitOps, secret management, disaster recovery, and automated testing gates

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

## Lab 4

- Blue-Green and Canary Kubernetes manifests
- Backup script for disaster recovery
- Documentation on GitOps, secret management, automated testing gates, and strategy comparison

All reports and observations are in the respective `docs/` folders.
