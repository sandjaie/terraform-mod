resource "aws_iam_policy" "alb_controller_policy" {

  policy = data.aws_iam_policy_document.alb_controller_policy.json
  name   = "${var.environment}-alb-controller-policy"

  tags = merge(local.tags, {
    Name = "${var.environment}-alb-controller-policy"
  })
}

resource "aws_iam_role" "alb_controller_role" {
  assume_role_policy = data.aws_iam_policy_document.load_balancer_role_trust_policy.json
  name               = "${var.environment}-alb-controller-role"

  tags = merge(local.tags, {
    Name = "${var.environment}-alb-controller-role"
  })
}

resource "aws_iam_role_policy_attachment" "alb_controller_policy" {
  policy_arn = aws_iam_policy.alb_controller_policy.arn
  role       = aws_iam_role.alb_controller_role.name
}

resource "kubernetes_service_account" "aws_load_balancer_controller" {
  metadata {
    name      = "aws-load-balancer-controller"
    namespace = "kube-system"

    labels = {
      "app.kubernetes.io/component" = "controller"
      "app.kubernetes.io/name"      = "aws-load-balancer-controller"
    }

    annotations = {
      "eks.amazonaws.com/role-arn" = aws_iam_role.alb_controller_role.arn
    }
  }
}
