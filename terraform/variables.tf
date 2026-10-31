variable "project_name" {
  description = "Prefix used for the AWS resources in this assignment."
  type        = string
  default     = "tericsoft-devops"
}

variable "aws_region" {
  description = "AWS region where the assignment resources will be created."
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type for the small demonstration website."
  type        = string
  default     = "t3.micro"
}

variable "admin_cidr" {
  description = "Your current public IPv4 address in CIDR format, for example 203.0.113.10/32."
  type        = string

  validation {
    condition     = can(cidrnetmask(var.admin_cidr)) && endswith(var.admin_cidr, "/32")
    error_message = "admin_cidr must be one IPv4 address followed by /32."
  }
}

variable "public_key_path" {
  description = "Path to the SSH public key on your local computer."
  type        = string
  default     = "~/.ssh/tericsoft-devops.pub"
}

variable "enable_ecs" {
  description = "Create the optional ECS Fargate resources after the image has been pushed to ECR."
  type        = bool
  default     = false
}

variable "image_tag" {
  description = "Docker image tag that the ECS task will run."
  type        = string
  default     = "latest"
}
