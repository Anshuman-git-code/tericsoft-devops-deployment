output "ec2_public_ip" {
  description = "Public IPv4 address of the EC2 instance."
  value       = aws_instance.app.public_ip
}

output "ec2_app_url" {
  description = "Public URL of the application on EC2."
  value       = "http://${aws_instance.app.public_ip}:8081"
}

output "ec2_ssh_command" {
  description = "SSH command for the EC2 instance."
  value       = "ssh -i ~/.ssh/tericsoft-devops ec2-user@${aws_instance.app.public_ip}"
}

output "ecr_repository_url" {
  description = "Private ECR repository URL for the Docker image."
  value       = aws_ecr_repository.app.repository_url
}

output "ecs_cluster_name" {
  description = "ECS cluster name, if the ECS bonus is enabled."
  value       = try(aws_ecs_cluster.main[0].name, null)
}

output "ecs_service_name" {
  description = "ECS service name, if the ECS bonus is enabled."
  value       = try(aws_ecs_service.app[0].name, null)
}
