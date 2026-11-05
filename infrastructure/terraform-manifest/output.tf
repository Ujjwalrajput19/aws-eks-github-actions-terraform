output "ecr_repository_url" {
  description = "URL of the project's Amazon ECR repository."
  value       = module.ecr.ecr_repository_url
}

output "ecr_repository_arn" {
  description = "ARN of the project's Amazon ECR repository."
  value       = module.ecr.ecr_repository_arn
}

output "github_actions_role_arn" {
  description = "IAM role ARN used by GitHub Actions to authenticate with AWS."
  value       = aws_iam_role.github_actions.arn
}
