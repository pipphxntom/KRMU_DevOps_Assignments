terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

# Lab simulation - local infrastructure definition
# In a real environment this would create cloud resources (EC2, VPC, etc.)

resource "null_resource" "web_server" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "echo 'Provisioning web server infrastructure for DevOps Lab 3'"
  }
}

resource "null_resource" "monitoring_stack" {
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "echo 'Provisioning monitoring and logging infrastructure'"
  }
}

output "infrastructure_status" {
  value = "Infrastructure defined and ready for application via Ansible"
}
