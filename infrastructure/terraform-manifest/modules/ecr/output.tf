output "ecr_repository_url" {
  description = "URL of the project Amazon ECR repository."
  value       = aws_ecr_repository.ecr.repository_url
}

output "ecr_repository_arn" {
  description = "ARN of the project Amazon ECR repository."
  value       = aws_ecr_repository.ecr.arn
}
