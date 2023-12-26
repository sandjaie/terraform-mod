variable "cost_center" {
  description = "Cost center"
  type        = string
}

variable "account_id" {
  description = "Account ID"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "aws_region" {
  description = "AWS Region."
  type        = string
}

variable "eks_cluster_name" {
  description = "Name of the eks cluster. Used in tags"
  type        = string
}

variable "oidc_id" {
  description = "OpenID Connect ID of the eks cluster. Available from 'OpenID Connect provider URL'"
  type        = string
}

variable "is_govcloud_region" {
  description = "Boolean to set if the region is govcloud"
  type        = bool
  default     = false
}
