locals {
  tags = {
    Managed_by  = "Terraform"
    Environment = var.environment
    Region      = var.aws_region
    Cluster     = var.eks_cluster_name
    CostCenter  = var.cost_center
  }
}

locals {
  aws_partition_name = var.is_govcloud_region ? "aws-us-gov" : "aws"
}
