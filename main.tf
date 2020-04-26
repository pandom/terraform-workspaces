provider "github" {
  individual = false
  version    = "2.4.0"
}

module "terraform-aws-awx" {
  source = "app.terraform.io/grantorchard/workspace/tfe"
  repository_name = "terraform-aws-awx"
  oauth_token_id = var.oauth_token_id
  env_var = var.aws_env_var
}

module "terraform-aws-core" {
  source = "app.terraform.io/grantorchard/workspace/tfe"
  repository_name = "terraform-aws-core"
  oauth_token_id = var.oauth_token_id
  env_var = var.aws_env_var
}