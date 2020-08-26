provider "github" {
  alias = "personal"
  individual = false
  organization = "pandom"
  version    = "2.4.0"
}

# provider "github" {
#   alias = "hashicorp"
#   organization = "hashicorp"
# }

module "terraform-vault-fmg" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.15"
  providers = {
    github = github.personal
  }
  repository_name = "terraform-vault-fmg"
  oauth_token_id = var.oauth_token_id
}

module "terraform-azure-vault" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.15"
  providers = {
    github = github.personal
  }
  repository_name = "terraform-azure-vault"
  oauth_token_id = var.oauth_token_id
}

module "terraform-aws-vault" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.15"
  providers = {
    github = github.personal
  }
  repository_name = "terraform-aws-vault"
  oauth_token_id = var.oauth_token_id
}

module "terraform-nomad-jobs" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.15"
  providers = {
    github = github.personal
  }
  repository_name = "terraform-nomad-jobs"
  oauth_token_id = var.oauth_token_id
}

#env_var = merge(var.aws_env_var, var.nomad_env_var)
module "personal-dockerfiles" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.15"
  providers = {
    github = github.personal
  }
  repository_name = "personal-dockerfiles"
  oauth_token_id = var.oauth_token_id
}



