### This module creates service account, roles and policies needed for alb ingress controller.

<br> 

### To install ingress controller follow the below document:

https://kubernetes-sigs.github.io/aws-load-balancer-controller/v2.4/deploy/installation/
https://docs.aws.amazon.com/eks/latest/userguide/aws-load-balancer-controller.html

### Steps:

- Install cert-manager: <br>
  `kubectl apply --validate=false -f https://github.com/jetstack/cert-manager/releases/download/v1.5.4/cert-manager.yaml` <br><br>

- ALB deployment file: <br>
  `wget --no-check-certificate https://github.com/kubernetes-sigs/aws-load-balancer-controller/releases/download/v2.4.3/v2_4_3_full.yaml` <br><br>

- `sed -i.bak -e 's|your-cluster-name|my-cluster|' ./v2_4_3_full.yaml`
  Note: Replace the cluster-name in the above file <br><br>

- Apply:<br>
  `kubectl apply -f v2_4_3_full.yaml`

#### apply ingress now:

- Apply:<br>

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.27.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >= 2.6.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.27.0 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | >= 2.6.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.alb_controller_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.alb_controller_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.alb_controller_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [kubernetes_service_account.aws_load_balancer_controller](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_account) | resource |
| [aws_eks_cluster.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster) | data source |
| [aws_eks_cluster_auth.cluster](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/eks_cluster_auth) | data source |
| [aws_iam_policy_document.alb_controller_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.load_balancer_role_trust_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | Account ID | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS Region. | `string` | n/a | yes |
| <a name="input_cost_center"></a> [cost\_center](#input\_cost\_center) | Cost center | `string` | n/a | yes |
| <a name="input_eks_cluster_name"></a> [eks\_cluster\_name](#input\_eks\_cluster\_name) | Name of the eks cluster. Used in tags | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Deployment environment. E.g. TPROD, APROD, CPROD | `string` | n/a | yes |
| <a name="input_is_govcloud_region"></a> [is\_govcloud\_region](#input\_is\_govcloud\_region) | Boolean to set if the region is govcloud | `bool` | `false` | no |
| <a name="input_oidc_id"></a> [oidc\_id](#input\_oidc\_id) | OpenID Connect ID of the eks cluster. Available from 'OpenID Connect provider URL' | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_controller_policy"></a> [alb\_controller\_policy](#output\_alb\_controller\_policy) | n/a |
| <a name="output_alb_controller_role"></a> [alb\_controller\_role](#output\_alb\_controller\_role) | n/a |
| <a name="output_alb_service_account"></a> [alb\_service\_account](#output\_alb\_service\_account) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
