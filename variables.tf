variable tfe_workspace_name {
  type = string
  default = ""
}

variable tfe_org_name {
  type = string
  default = "grantorchard"
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
  default = "grantorchard"
}

variable template_repository_name {
  type = string
  default = "terraform-repository-template"
}

variable aws_env_var {
  type = map
  default = {}
}