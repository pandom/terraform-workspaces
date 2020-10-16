module "unmanaged-github-repos" {
  source = "app.terraform.io/grantorchard/workspace/tfe"
  providers = {
    github = github.personal
  }
  repository_name = "unmanaged-github-repos"
  oauth_token_id = var.oauth_token_id
}