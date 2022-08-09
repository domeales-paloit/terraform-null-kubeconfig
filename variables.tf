variable "cluster_name" {
  description = "Cluster name"
  type        = string
}

variable "cluster_endpoint" {
  description = "Cluster API endpoint"
  type        = string
  sensitive   = true
}

variable "cluster_certificate_authority_data" {
  description = "Cluster certificate authority data"
  type        = string
  sensitive   = true
}

variable "client_authentication_api_version" {
  description = "Client authentication API version"
  type        = string
  default     = "client.authentication.k8s.io/v1beta1"
}

variable "exec_command" {
  description = "Command to run to retrieve token. Value of .users[0].user.exec.command"
  type        = string
  default     = null
}

variable "exec_args" {
  description = "Arguments to command to run to retrieve token. Value of .users[0].user.exec.args"
  type        = list(string)
  default     = null
}

variable "exec_env" {
  description = "Environment variables for command to run to retrieve token. Value of .users[0].user.exec.env"
  type        = map(string)
  default     = null
}

variable "create_default_eks_kubeconfig" {
  description = "Set to true to create a KUBECONFIG suitable for EKS. Note, if this is set to true, then these variables must also be set: eks_aws_account_id, eks_aws_region"
  type        = bool
  default     = false
}

variable "eks_get_token_aws_role_arn" {
  description = "AWS IAM role ARN that should be used to request the EKS token for authentication. Only used if create_default_eks_kubeconfig is set to true"
  type        = string
  default     = null
}

variable "eks_aws_profile" {
  description = "AWS profile that should be used to request the EKS token for authentication. Only used if create_default_eks_kubeconfig is set to true"
  type        = string
  default     = null
}

variable "eks_aws_region" {
  description = "AWS region that the EKS cluster is in. Only used if create_default_eks_kubeconfig is set to true"
  type        = string
  default     = null
}
