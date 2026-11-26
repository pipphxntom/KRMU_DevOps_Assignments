# Lab 4: Advanced Deployment Strategies Notes

## Blue-Green
Two deployments (blue/green) + Service selector switch for zero-downtime cutover and instant rollback.

## Canary
Stable (9 replicas) + Canary (1 replica). Gradually increase canary replicas while monitoring error rate and latency. Rollback by scaling canary to 0.

## GitOps
Manifests in Git are the source of truth. Reconciliation applies desired state and corrects drift.

## Secrets
Kubernetes Secrets (or external vault) injected via env or volumes. Never committed to Git.

## Disaster Recovery
Hourly backups, documented restore procedure, RPO 1h / RTO 15-30 min. Failover by switching Service selector to standby.

## Automated Testing
Unit and integration test stages act as pipeline gates before any deploy stage.
