provider "github" {
  alias = "personal"
  individual = false
  organization = "grantorchard"
  version    = "2.4.0"
}

provider "github" {
  alias = "hashicorp"
  organization = "hashicorp"
}

module "terraform-aws-awx" {
  source = "app.terraform.io/grantorchard/workspace/tfe"
  providers = {
    github = github.personal
  }
  repository_name = "terraform-aws-awx"
  oauth_token_id = var.oauth_token_id
  env_var = var.aws_env_var
}

module "terraform-aws-core" {
  source = "app.terraform.io/grantorchard/workspace/tfe"
  providers = {
    github = github.personal
  }
  repository_name = "terraform-aws-core"
  oauth_token_id = var.oauth_token_id
  env_var = var.aws_env_var
}

module "hashicat-vsphere" {
  source = "app.terraform.io/grantorchard/workspace/tfe"
  providers = {
    github = github.personal
  }
  repository_name = "hashicat-vsphere"
  oauth_token_id = var.oauth_token_id
  env_var = var.vsphere_env_var
}

module "terraform-aws-aviatrix" {
  source = "app.terraform.io/grantorchard/workspace/tfe"
  providers = {
    github = github.personal
  }
  repository_name = "terraform-aws-aviatrix"
  oauth_token_id = var.oauth_token_id
  env_var = var.vsphere_env_var
}

# ami-093acc21a521ba0e5