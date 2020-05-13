variable tfe_workspace_name {
  type = string
  default = ""
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
      "value" = "http://burkey-pa6px8sygq4zxxlm7-nomad-1784565306.ap-southeast-2.elb.amazonaws.com:4646",
      "sensitive" = false
    },
    "NOMAD_TOKEN" = {
      "value" = "6d13d9f8-053f-a1d0-0713-3f2495c8748f",
      "sensitive" = true
    }
  }
}

