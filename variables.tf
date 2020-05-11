variable tfe_workspace_name {
  type = string
  default = "terraform-workspaces"
}

variable tfe_org_name {
  type = string
  default = "burkey"
}

variable tfe_auto_apply {
  type = bool
  default = true
}

variable oauth_token_id {
  type = string
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
  default = "Anthony Burke"
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
    },
    "AWS_ACCESS_KEY_ID" = {
      "value" = "",
      "sensitive" = false
    },
    "AWS_SECRET_ACCESS_KEY" = {
      "value" = "",
      "sensitive" = true
    }
  }
}

variable nomad_env_var {
  default = {
    "NOMAD_ADDR" = {
      "value" = "http://nomad:4646",
      "sensitive" = false
    },
    "NOMAD_TOKEN" = {
      "value" = "",
      "sensitive" = false
    }
  }
}

