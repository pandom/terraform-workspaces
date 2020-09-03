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
  env_var = var.azure_env_Var
}

module "tf-azure-vault-prod" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.15"
  providers = {
    github = github.personal
  }
  repository_name = "tf-azure-vault"
  oauth_token_id = var.oauth_token_id
  env_var = merge(var.azure_env_Var, var.azure_location_var)
}

module "tf-azure-vault-dev" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.15"
  providers = {
    github = github.personal
  }
  repository_name = "tf-azure-vault-dev"
  oauth_token_id = var.oauth_token_id
  env_var = merge(var.azure_env_Var, var.azure_location_var)
}

module "tf-aws-vault-dev" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.15"
  providers = {
    github = github.personal
  }
  repository_name = "tf-aws-vault"
  oauth_token_id = var.oauth_token_id
  env_var = var.azure_env_Var
  tf_var = var.ssh_public_key
}

module "tf-nomad-jobs" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.15"
  providers = {
    github = github.personal
  }
  repository_name = "tf-nomad-jobs"
  oauth_token_id = var.oauth_token_id
  env_var = merge(var.azure_env_Var, var.nomad_env_var)
}




