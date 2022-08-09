# terraform-null-kubeconfig
Terraform module to create Kubeconfig YAML

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_client_authentication_api_version"></a> [client\_authentication\_api\_version](#input\_client\_authentication\_api\_version) | Client authentication API version | `string` | `"client.authentication.k8s.io/v1beta1"` | no |
| <a name="input_cluster_certificate_authority_data"></a> [cluster\_certificate\_authority\_data](#input\_cluster\_certificate\_authority\_data) | Cluster certificate authority data | `string` | n/a | yes |
| <a name="input_cluster_endpoint"></a> [cluster\_endpoint](#input\_cluster\_endpoint) | Cluster API endpoint | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster name | `string` | n/a | yes |
| <a name="input_create_default_eks_kubeconfig"></a> [create\_default\_eks\_kubeconfig](#input\_create\_default\_eks\_kubeconfig) | Set to true to create a KUBECONFIG suitable for EKS. Note, if this is set to true, then these variables must also be set: eks\_aws\_account\_id, eks\_aws\_region | `bool` | `false` | no |
| <a name="input_eks_aws_profile"></a> [eks\_aws\_profile](#input\_eks\_aws\_profile) | AWS profile that should be used to request the EKS token for authentication. Only used if create\_default\_eks\_kubeconfig is set to true | `string` | `null` | no |
| <a name="input_eks_aws_region"></a> [eks\_aws\_region](#input\_eks\_aws\_region) | AWS region that the EKS cluster is in. Only used if create\_default\_eks\_kubeconfig is set to true | `string` | `null` | no |
| <a name="input_eks_get_token_aws_role_arn"></a> [eks\_get\_token\_aws\_role\_arn](#input\_eks\_get\_token\_aws\_role\_arn) | AWS IAM role ARN that should be used to request the EKS token for authentication. Only used if create\_default\_eks\_kubeconfig is set to true | `string` | `null` | no |
| <a name="input_exec_args"></a> [exec\_args](#input\_exec\_args) | Arguments to command to run to retrieve token. Value of .users[0].user.exec.args | `list(string)` | `null` | no |
| <a name="input_exec_command"></a> [exec\_command](#input\_exec\_command) | Command to run to retrieve token. Value of .users[0].user.exec.command | `string` | `null` | no |
| <a name="input_exec_env"></a> [exec\_env](#input\_exec\_env) | Environment variables for command to run to retrieve token. Value of .users[0].user.exec.env | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kubeconfig_base64"></a> [kubeconfig\_base64](#output\_kubeconfig\_base64) | Kubeconfig YAML base64 encoded |
| <a name="output_kubeconfig_map"></a> [kubeconfig\_map](#output\_kubeconfig\_map) | Kubeconfig as a Terraform map |
| <a name="output_kubeconfig_yaml"></a> [kubeconfig\_yaml](#output\_kubeconfig\_yaml) | Kubeconfig YAML |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
