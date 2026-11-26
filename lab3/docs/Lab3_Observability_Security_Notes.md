# Lab 3: Prometheus, Grafana, ELK, Security and Testing Notes

## Prometheus & Grafana

prometheus.yml configured to scrape localhost:9090, node exporter, and the application. Grafana imported a basic Node.js / system dashboard. Metrics visible: up, process_cpu, http_requests.

## ELK Stack

Filebeat shipped logs to Logstash. Logstash filtered and sent to Elasticsearch. Kibana showed application logs with filters on status code and message.

## Security Scanning in Pipeline

Added stages:
```groovy
stage('Security Scan') {
    steps {
        sh 'npm audit --audit-level=moderate || true'
        sh 'trivy image shwetank/devops-app:v1 || true'
    }
}
```
Critical vulnerabilities were noted and fixed where possible.

## Feature Flags, Load Testing, Selenium

- Feature flag: `FEATURE_NEW_UI=true` environment variable.
- Load test: `ab -n 1000 -c 10 http://localhost:3000/`
- Selenium: basic Python script using webdriver to open the page and assert title/content.

All configurations and observations are committed here.
