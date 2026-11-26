# Lab 3: Ansible Configuration Automation

## Playbook Overview

Wrote an Ansible playbook (`playbook.yml`) that:
- Updates package cache
- Installs nginx, nodejs, npm, git
- Creates a deploy user
- Clones the application repository
- Installs npm dependencies
- Configures nginx as reverse proxy
- Restarts nginx via handler

## Commands Executed

```bash
ansible-playbook -i inventory.ini playbook.yml --check
ansible-playbook -i inventory.ini playbook.yml
```

## Observations

Dry-run (`--check`) showed the changes that would be made. Actual run completed successfully on the lab VM. Nginx started serving the app on port 80 after the playbook finished. Idempotent re-run made no further changes, which is the expected behavior.
