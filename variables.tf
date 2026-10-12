variable "team_organization_members" {
  description = <<EOT
Map of team_organization_members, attributes below
Required:
    - organization_membership_id
    - team_id
EOT

  type = map(object({
    organization_membership_id = string
    team_id                    = string
  }))
}

