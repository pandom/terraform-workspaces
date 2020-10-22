module "tf-packer-consul" {
  source = "app.terraform.io/burkey/workspace/tfe"
  providers = {
    github = github.personal
  }
  repository_name = "tf-packer-consul"
  oauth_token_id = var.oauth_token_id
}
module "tf-packer-nomad" {
  source = "app.terraform.io/burkey/workspace/tfe"
  providers = {
    github = github.personal
  }
  repository_name = "tf-packer-nomad"
  oauth_token_id = var.oauth_token_id
}
module "tf-packer-vault" {
  source = "app.terraform.io/burkey/workspace/tfe"
  providers = {
    github = github.personal
  }
  repository_name = "tf-packer-vault"
  oauth_token_id = var.oauth_token_id
}
module "tf-packer-waypoint" {
  source = "app.terraform.io/burkey/workspace/tfe"
  providers = {
    github = github.personal
  }
  repository_name = "tf-packer-waypoint"
  oauth_token_id = var.oauth_token_id
}
module "tf-packer-boundary" {
  source = "app.terraform.io/burkey/workspace/tfe"
  providers = {
    github = github.personal
  }
  repository_name = "tf-packer-boundary"
  oauth_token_id = var.oauth_token_id
}