// terraform {
//   backend "remote" {
//     hostname = "app.terraform.io"
//     organization = "burkey"

//     workspaces {
//       name = "terraform-workspaces"
//     }
//   }
// }
provider "github" {
  alias = "personal"
  // individual = true
  owner = "pandom"
  version    = "3.1.0"
}

locals {
  ssh_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC+uueOxI5qNTksG2x/lTbbjPtzbW3++iH5CBQWKBojVP5qA/cVCOH8SnT08uQeN+Jt+zG0CXRDu9mC9ISDTLOwcjifvx35eI12FqmPnrDIMlmUjTH/TxHRfj1EJ2TvcJs77KZhAH8EmOvnr7ep2MkTYafLe9N6MCnYICH261jaJS0SrmDo0g6O8tdme9xgAwRHx1f6b750pHsuZ96tRbHYK/sYCjDauwc64qTYX5CoEDWNUhSHesmFgcB1zwZJ+Wxxdb7hQBE7aF0Y3AiRqlsqyn1k+SCn2TpjZIl2tgraJwCsnfEboSe6oOIetGS4Ht4W5l4xDMqrC1Ari4IRncsovnDlqQ4Q4Ib8E5mOcy2dF9hj2LUy6Cpn8xCFs5wr0sRBJWt0w324px8qjMptsRPQqhVGpUXorCJSOst0ypE9FDMTMJCLMCCf6PxzFZvL4sY80v6gD4bcALxyZ2H4vuBoNqDhYt63R2Eyg46UlIuuTq3o51K6xwiV0r+zSXsfNf3byJF1HkakXtiBpxcrXtIKcwQJflgbcSPavGsGAU8zGBEpf9ukV2DoFTUQf80PRU/+Tf2Xu0V3o1EFCyM7CaTZ4YkJk7rD/QFISB9euvdQLr+pt4/he9f21scuNf8pQzHooT0WOWnl5HpkqiUppwX6ELUXLSnMHFxUnzDfa3fsww=="
}
## Terraform Token Lab


module "tf-vault-terraform-token" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20" 
  providers = {
    github = github.personal
  }
  repository_name = "tf-vault-terraform-token"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}

## Cody's Lab - Needs VPN from macbook
module "tf-vsphere-module" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20"
  providers = {
    github = github.personal 
   }
    repository_name = "tf-vsphere-module"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    },
    "user" = {
      "value" = "administrator@vsphere.local",
      "sensitive" = false
    },
    "password" = {
      "value" = "VMware123!",
      "sensitive" = true
    }
  },
  var.slack_webhook)
}

## Configuration for HCP Vault stored within.
module "tf-hcp-config" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20" 
  providers = {
    github = github.personal
  }
  repository_name = "tf-hcp-config"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}

module "tf-agent-snapshot" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20" 
  providers = {
    github = github.personal
  }
  repository_name = "tf-agent-snapshot"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}

module "tf-gcp-nomad" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20" 
  providers = {
    github = github.personal
  }
  repository_name = "tf-gcp-nomad"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}

module "tf-vault-nomad" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20" 
  providers = {
    github = github.personal
  }
  repository_name = "tf-vault-nomad"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}

module "tf-vault-ns-ops" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20" 
  providers = {
    github = github.personal
  }
  repository_name = "tf-vault-ns-ops"
  create_repo = true
  repository_private = false
  tf_ver = "0.15.2"
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}

module "tf-vault-ns" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20"
  providers = {
    github = github.personal
  }
  repository_name = "tf-vault-ns"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}

module "tf-gcp-factory" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20"
  providers = {
    github = github.personal
  }
  repository_name = "tf-gcp-factory"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}

module "tf-aws-boundary" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20"
  providers = {
    github = github.personal
  }
  repository_name = "tf-aws-boundary"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}

module "tf-aws-nomad" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20"
  providers = {
    github = github.personal
  }
  repository_name = "tf-aws-nomad"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}

module "tf-aws-consul" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20"
  providers = {
    github = github.personal
  }
  repository_name = "tf-aws-consul"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}



### PACKER REPOS

module "tf-packer-consul" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20"
  providers = {
    github = github.personal
  }
  template_repository_owner = "pandom"
  repository_name = "tf-packer-consul"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}
module "tf-packer-nomad" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20"
  providers = {
    github = github.personal
  }
  template_repository_owner = "pandom"
  repository_name = "tf-packer-nomad"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}
module "tf-packer-vault" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20"
  providers = {
    github = github.personal
  }
  template_repository_owner = "pandom"
  repository_name = "tf-packer-vault"
  oauth_token_id = var.oauth_token_id
}
module "tf-packer-waypoint" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20"
  providers = {
    github = github.personal
  }
  template_repository_owner = "pandom"
  repository_name = "tf-packer-waypoint"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}
module "tf-packer-boundary" {
  source = "app.terraform.io/burkey/workspace/tfe"
  version = "0.0.20"
  providers = {
    github = github.personal
  }
  template_repository_owner = "pandom"
  repository_name = "tf-packer-boundary"
  create_repo = true
  repository_private = false
  oauth_token_id = var.oauth_token_id
  tf_var = merge({
    "ssh_public_key" = {
      "value" = local.ssh_public_key,
      "sensitive" = false
    }
  },
  var.slack_webhook)
}





