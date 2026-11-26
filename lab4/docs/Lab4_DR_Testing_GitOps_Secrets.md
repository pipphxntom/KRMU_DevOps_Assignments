# Lab 4: Disaster Recovery, Testing, GitOps and Secrets

## Disaster Recovery
- Backup script creates timestamped archives.
- Restore tested by copying backup into a new pod and extracting.
- Failover: update Service selector to standby deployment.

## Automated Testing in Pipeline
Jenkinsfile includes Unit Tests and Integration Tests stages that must pass before Deploy.

## GitOps
Desired state lives in Git. A sync process (manual script or Argo CD/Flux style) applies manifests and reconciles the cluster.

## Secret Management
Secrets created with kubectl create secret and referenced in Deployments. Jenkins uses its credential store. Secrets are not stored in the repository.
