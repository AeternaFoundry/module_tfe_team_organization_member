output "team_organization_members_id" {
  description = "Map of id values across all team_organization_members, keyed the same as var.team_organization_members except keys with no id are omitted"
  value       = { for k, v in tfe_team_organization_member.team_organization_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "team_organization_members_organization_membership_id" {
  description = "Map of organization_membership_id values across all team_organization_members, keyed the same as var.team_organization_members except keys with no organization_membership_id are omitted"
  value       = { for k, v in tfe_team_organization_member.team_organization_members : k => v.organization_membership_id if v.organization_membership_id != null && length(v.organization_membership_id) > 0 }
}
output "team_organization_members_team_id" {
  description = "Map of team_id values across all team_organization_members, keyed the same as var.team_organization_members except keys with no team_id are omitted"
  value       = { for k, v in tfe_team_organization_member.team_organization_members : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}

