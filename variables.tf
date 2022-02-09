variable tfe_workspace_name {
  type = string
  default = ""
}

variable "nomad_addr" {
  type = map
  default = {    
    "NOMAD_ADDR" = {
      "value" = "http://35.244.92.16:4646",
      "sensitive" = false
    }
  }
}

variable ssh_public_key {
  type = string
  default = ""
}

variable oauth_token_id {
  type = string
}

variable tfe_org_name {
  type = string
  default = "burkey"
}

variable tfe_auto_apply {
  type = bool
  default = true
}

variable repository_name {
  type = string
  default = ""
}

variable repository_private {
  type = bool
  default = false
}

variable template_repository_owner {
  type = string
  default = "pandom"
}

variable template_repository_name {
  type = string
  default = "terraform-repository-template"
}

variable aws_env_var {
  default = {
    "AWS_REGION" = {
      "value" = "ap-southeast-2",
      "sensitive" = false
    }
  }
}

variable azure_location_var {
  type = map
  default = {
  "AZURE_LOCATION_VAR" = {
    "value" = "australiasoutheast",
    "sensitive" = false
    }
  }
}

variable vsphere_env_var {
  type = map
  default = {
    "VSPHERE_USER" = {
      "value" = "",
      "sensitive" = false
    },
    "VSPHERE_PASSWORD" = {
      "value" = "",
      "sensitive" = true
    },
    "VSPHERE_SERVER" = {
      "value" = "",
      "sensitive" = false
    },
    "VSPHERE_ALLOW_UNVERIFIED_SSL" = {
      "value" = true,
      "sensitive" = false
    }
  }
}

variable azure_env_var {
  type = map
  default = {
    "ARM_CLIENT_ID" = {
      "value" = "",
      "sensitive" = true
    },
    "ARM_CLIENT_SECRET" = {
      "value" = "",
      "sensitive" = true
    },
    "ARM_SUBSCRIPTION_ID" = {
      "value" = "",
      "sensitive" = true
    },
    "ARM_TENANT_ID" = {
      "value" = "",
      "sensitive" = true
    }
  }
}

variable slack_webhook {
  type = map
  default = {}
}

variable "td1_workspace_names" {
  type = list(string)
  default = ["td1-devops-prod","td1-devops-sit","td1-devops-dev","td1-devops-livedemo"]
}

variable "td2_workspace_names" {
  type = list(string)
  default = ["td2-platform-prod","td2-platform-sit","td2-platform-dev"]
}

variable "td3_workspace_names" {
  type = list(string)
  default = ["td3-special-prod","td3-special-sit","td3-special-dev"]
}

variable "td1_admin_name" {
  type = string
  default = "td1-devops-admin"
}
variable "td1_ops_name" {
  type = string
  default = "td1-devops-ops"
}

variable "td2_admin_name" {
  type = string
  default = "td2-platform-admin"
}
variable "td2_ops_name" {
  type = string
  default = "td2-platform-ops"
}

variable "td3_ops_name" {
  type = string
  default = "td3-special-ops"
}
variable "td3_admin_name" {
  type = string
  default = "td3-special-admin"
}