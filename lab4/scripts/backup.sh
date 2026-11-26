#!/bin/bash
# Simple backup script for disaster recovery lab
DATE=$(date +%F-%H%M)
BACKUP_DIR="./backups"
mkdir -p $BACKUP_DIR

echo "Creating backup $DATE"
# Example: dump from a pod or copy volume data
# kubectl exec deploy/devops-app -- tar czf - /data > $BACKUP_DIR/data-$DATE.tar.gz
echo "Backup completed: $BACKUP_DIR/data-$DATE.tar.gz"
echo "Store this backup off-cluster for real DR."
