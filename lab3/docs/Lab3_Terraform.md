# Lab 3: Terraform Infrastructure as Code

## Configuration

Created `main.tf` and `variables.tf` defining infrastructure resources for the lab environment. Used the null provider for local simulation of provisioning steps (in a cloud lab this would create real instances).

## Commands

```bash
terraform init
terraform plan
terraform apply -auto-approve
terraform show
```

## Observations

`terraform init` downloaded the null provider. `plan` showed the resources that would be created. `apply` executed the local-exec provisioners and printed the status messages. State file was created locally. This demonstrated the init → plan → apply workflow clearly.
