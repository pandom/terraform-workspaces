
variable tfe_workspace_name {
  type = string
  default = ""
}

variable tfe_org_name {
  type = string
  default = "burkey"
}

variable github_token {
  type = string
}

variable tfe_auto_apply {
  type = bool
  default = true
}
#this is your github personal token
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
  default = "Anthony Burke"
}

variable template_repository_name {
  type = string
  default = "terraform-repository-template"
}

variable azure_location_var {
  default = {
    "LOCATION" = {
      "value" = "australiasoutheast"
    }
  }
}

variable azure_env_var {
  default = {
    "ARM_SUBSCRIPTION_ID" = {
      "value" = "",
      "sensitive" = false,
      "hcl" = false
    },
    "ARM_TENANT_ID" = {
      "value" = "",
      "sensitive" = true,
      "hcl" = false
    },
    "ARM_CLIENT_ID" = {
      "value" = "",
      "sensitive" = true,
      "hcl" = false
    },
     "ARM_CLIENT_ID" = {
      "value" = "",
      "sensitive" = true,
      "hcl" = false
    },
    "ARM_CLIENT_SECRET" = {
      "value" = "",
      "sensitive" = true,
      "hcl" = false
    }
  }
}

// variable terraform_agent_var {
//   default = {
//     "TFC_AGENT_TOKEN" = {
//       "value" = "",
//       "sensitive" = true,
//       "hcl" = false
//     }
//   }
// }

variable nomad_env_var {
  default = {
    "NOMAD_ADDR" = {
      "value" = "http://localhost:4646",
      "sensitive" = false
    },
    "NOMAD_TOKEN" = {
      "value" = "",
      "sensitive" = true
    }
  }
}

variable ssh_public_key {
  default = {
    "ssh_public_key" = {
      "value" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC+uueOxI5qNTksG2x/lTbbjPtzbW3++iH5CBQWKBojVP5qA/cVCOH8SnT08uQeN+Jt+zG0CXRDu9mC9ISDTLOwcjifvx35eI12FqmPnrDIMlmUjTH/TxHRfj1EJ2TvcJs77KZhAH8EmOvnr7ep2MkTYafLe9N6MCnYICH261jaJS0SrmDo0g6O8tdme9xgAwRHx1f6b750pHsuZ96tRbHYK/sYCjDauwc64qTYX5CoEDWNUhSHesmFgcB1zwZJ+Wxxdb7hQBE7aF0Y3AiRqlsqyn1k+SCn2TpjZIl2tgraJwCsnfEboSe6oOIetGS4Ht4W5l4xDMqrC1Ari4IRncsovnDlqQ4Q4Ib8E5mOcy2dF9hj2LUy6Cpn8xCFs5wr0sRBJWt0w324px8qjMptsRPQqhVGpUXorCJSOst0ypE9FDMTMJCLMCCf6PxzFZvL4sY80v6gD4bcALxyZ2H4vuBoNqDhYt63R2Eyg46UlIuuTq3o51K6xwiV0r+zSXsfNf3byJF1HkakXtiBpxcrXtIKcwQJflgbcSPavGsGAU8zGBEpf9ukV2DoFTUQf80PRU/+Tf2Xu0V3o1EFCyM7CaTZ4YkJk7rD/QFISB9euvdQLr+pt4/he9f21scuNf8pQzHooT0WOWnl5HpkqiUppwX6ELUXLSnMHFxUnzDfa3fsww==",
      "sensitive" = "false"
    }
  }
}

