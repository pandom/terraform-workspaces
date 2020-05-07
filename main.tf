provider "github" {
  alias = "personal"
  individual = false
  organization = "burkey"
  version    = "2.4.0"
}

provider "github" {
  alias = "hashicorp"
  organization = "hashicorp"
}

module "terraform-vault-fmg" {
  source = "app.terraform.io/pandom/workspace/tfe"
  providers = {
    github = github.personal
  }
  repository_name = "terraform-vault-fmg"
  oauth_token_id = var.oauth_token_id
  env_var = var.aws_env_var
}

