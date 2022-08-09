locals {
  eks_exec_env = var.create_default_eks_kubeconfig && var.eks_aws_profile == "" ? {} : {
    AWS_PROFILE = var.eks_aws_profile
  }

  exec_env_array = [
    for name, val in merge(var.exec_env, local.eks_exec_env) : {
      name  = name
      value = val
    }
  ]

  eks_exec = {
    apiVersion = var.client_authentication_api_version
    args = [
      "--region",
      var.eks_aws_region,
      "eks",
      "get-token",
      "--role-arn",
      var.eks_get_token_aws_role_arn,
      "--cluster-name",
      var.cluster_name
    ]
    command = "aws"
    env     = local.exec_env_array
  }

  exec = {
    apiVersion = var.client_authentication_api_version
    args       = var.exec_args
    command    = var.exec_command
    env        = length(local.exec_env_array) == 0 ? null : local.exec_env_array
  }

  kubeconfig = {
    kind       = "Config"
    apiVersion = "v1"
    clusters = [{
      cluster = {
        certificate-authority-data = var.cluster_certificate_authority_data
        server                     = var.cluster_endpoint
      }
      name = var.cluster_name
    }]
    contexts = [{
      context = {
        cluster = var.cluster_name
        user    = var.cluster_name
      }
      name = var.cluster_name
    }]
    current-context = var.cluster_name
    preferences     = {}
    users = [{
      name = var.cluster_name
      user = {
        exec = var.create_default_eks_kubeconfig ? local.eks_exec : local.exec
      }
    }]
  }

  kubeconfig_yaml = replace(yamlencode(local.kubeconfig), "\"", "")
}
