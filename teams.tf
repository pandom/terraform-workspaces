#This should be a module - would allow looping.
locals {
 td1_workspace_ids = toset(["tfe_workspace.td1sit.id", "tfe_workspace.td1prod.id", "tfe_workspace.td1dev.id" ])
 td2_workspace_ids = toset(["tfe_workspace.td2sit.id", "tfe_workspace.td2prod.id", "tfe_workspace.td2dev.id" ])
 td3_workspace_ids = toset(["tfe_workspace.td3sit.id", "tfe_workspace.td3prod.id", "tfe_workspace.td3dev.id" ])
}

### Create Workspaces -> Loop through map of stringed variables
resource "tfe_workspace" "td1" {
  for_each = toset(var.td1_workspace_names)
 name         = each.value
  organization = var.tfe_org_name
  tag_names    = ["td1", "td1:devops"]
}
resource "tfe_workspace" "td2" {
  for_each = toset(var.td2_workspace_names)
 name         = each.value
  organization = var.tfe_org_name
  tag_names    = ["td2", "td2:platform"]
}
resource "tfe_workspace" "td3" {
  for_each = toset(var.td3_workspace_names)
 name         = each.value
  organization = var.tfe_org_name
  tag_names    = ["td3", "td3:platform"]
}
## Definition of teams
resource "tfe_team" "td1admin" {
  name = var.td1_admin_name
  organization = var.tfe_org_name
}

resource "tfe_team" "td1ops" {
  name = var.td1_ops_name
  organization = var.tfe_org_name
}

resource "tfe_team" "td2admin" {
  name = var.td2_admin_name
  organization = var.tfe_org_name
}

resource "tfe_team" "td2ops" {
  name = var.td2_ops_name
  organization = var.tfe_org_name
}

resource "tfe_team" "td3admin" {
  name = var.td3_admin_name
  organization = var.tfe_org_name
}
## Define Team permissions
resource "tfe_team_access" "td1admin" {
 for_each = { for v in tfe_workspace.td1: v.name => v }
  team_id = tfe_team.td1admin.id
  access = "admin"
  workspace_id = each.value.id
}
resource "tfe_team_access" "td1ops" {
 for_each = { for v in tfe_workspace.td1: v.name => v }
  team_id = tfe_team.td1ops.id
  access = "read"
  workspace_id = each.value.id
}

resource "tfe_team_access" "td2admin" {
 for_each = { for v in tfe_workspace.td2: v.name => v }
  team_id = tfe_team.td2admin.id
  access = "admin"
  workspace_id = each.value.id
}
resource "tfe_team_access" "td2ops" {
 for_each = { for v in tfe_workspace.td2: v.name => v }
  team_id = tfe_team.td2ops.id
  access = "read"
  workspace_id = each.value.id
}
## Adding TD3 Admin to TD3 workspaces
resource "tfe_team_access" "td3admin" {
 for_each = { for v in tfe_workspace.td3: v.name => v }
  team_id = tfe_team.td3admin.id
  access = "read"
  workspace_id = each.value.id
}
## Adds TD3 who can do admin for workspaces in TD2. Alternative automate this at Okta level and add user to TD2 groups.
resource "tfe_team_access" "td3admin-special" {
 for_each = { for v in tfe_workspace.td2: v.name => v }
  team_id = tfe_team.td3admin.id
  access = "admin"
  workspace_id = each.value.id
}
