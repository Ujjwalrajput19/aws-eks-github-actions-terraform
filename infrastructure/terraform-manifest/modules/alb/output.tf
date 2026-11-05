output "load_balancer_controller_role_arn" {
  description = "ARN of the IAM role assumed by AWS Load Balancer Controller."
  value       = aws_iam_role.aws_load_balancer_controller.arn
}

output "load_balancer_controller_policy_arn" {
  description = "ARN of the IAM policy attached to AWS Load Balancer Controller."
  value       = aws_iam_policy.alb_iam_policy.arn
}