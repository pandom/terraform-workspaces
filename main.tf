terraform {
  required_providers {
    github = {
      # The "hashicorp" namespace is the new home for the HashiCorp-maintained
      # provider plugins.
      #
      # source is not required for the hashicorp/* namespace as a measure of
      # backward compatibility for commonly-used providers, but recommended for
      # explicitness.
      alias = "personal"
      organization = "pandom"
      source  = "hashicorp/azurerm"
      version = "~> 2.12"
      token   = var.github_token
    }
  }
}

// provider "github" {
//   alias = "personal"
  // individual = true
  // organization = "pandom"
  // source = "hashicorp/github"
  // version    = "2.4.0"
//   token      = var.github_token
// }

# provider "github" {
#   alias = "hashicorp"
#   organization = "hashicorp"
# }

module "terraform-vault-fmg" {
  
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.16"
  providers = {
    github = github.personal
  }
  repository_name = "terraform-vault-fmg"
  oauth_token_id = var.oauth_token_id
  env_var = var.azure_env_var
  tf_var = var.azure_location_var

}

module "tf-azure-vault-prod" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.16"
  providers = {
    github = github.personal
  }
  repository_name = "tf-azure-vault"
  oauth_token_id = var.oauth_token_id
  env_var = var.azure_env_var
  tf_var = var.azure_location_var
}

module "tf-azure-vault-dev" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.16"
  providers = {
    github = github.personal
  }
  repository_name = "tf-azure-vault-dev"
  oauth_token_id = var.oauth_token_id
  env_var = var.azure_env_var
  tf_var = var.azure_location_var
}

module "tf-aws-vault-dev" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.16"
  providers = {
    github = github.personal
  }
  repository_name = "tf-aws-vault"
  oauth_token_id = var.oauth_token_id
  env_var = var.azure_env_var
  tf_var = merge(var.ssh_public_key, var.azure_location_var)
}

module "tf-nomad-jobs" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.16"
  providers = {
    github = github.personal
  }
  repository_name = "tf-nomad-jobs"
  oauth_token_id = var.oauth_token_id
  // env_var = merge(var.azure_env_var, var.terraform_agent_var, var.nomad_env_var)
}




