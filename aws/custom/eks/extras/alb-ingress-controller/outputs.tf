output "alb_controller_role" {
  value = aws_iam_role.alb_controller_role.name
}

output "alb_controller_policy" {
  value = aws_iam_policy.alb_controller_policy.name
}

output "alb_service_account" {
  value = kubernetes_service_account.aws_load_balancer_controller.id
}
