# Lab 3: Monitoring, Logging and DevSecOps Report

## Automation

- Ansible playbook automates application server configuration (packages, user, code deploy, nginx).
- Terraform defines and provisions the underlying infrastructure in a repeatable way.

## Observability

- Prometheus scrapes metrics from the application and node exporter.
- Grafana dashboards visualize CPU, memory, request rate, and error rate.
- ELK stack collects application logs via Filebeat, parses them in Logstash, and displays them in Kibana.

## Security (DevSecOps)

- Added dependency scanning step in the Jenkins pipeline using `npm audit` and a basic Trivy scan on the Docker image.
- Findings were recorded and critical issues were addressed before promotion.

## Feature Flags, Load & Browser Testing

- Simple feature flag controlled via environment variable / ConfigMap.
- Load testing performed with a basic script (or Apache Bench) showing response times under concurrent requests.
- Selenium script automated browser checks for the main page and health endpoint.

## Observations

The combination of IaC, monitoring, centralized logging, and pipeline security scanning makes the workflow more reliable and auditable. Screenshots of Grafana dashboards, Kibana log views, and pipeline security results are stored in the evidence folder.
