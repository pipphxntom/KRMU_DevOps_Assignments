variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "lab"
}

variable "app_replicas" {
  description = "Number of application instances"
  type        = number
  default     = 2
}
