output "observabilityadmin_centralization_rule_for_organizations_region" {
  description = "Map of region values across all observabilityadmin_centralization_rule_for_organizations, keyed the same as var.observabilityadmin_centralization_rule_for_organizations"
  value       = { for k, v in aws_observabilityadmin_centralization_rule_for_organization.observabilityadmin_centralization_rule_for_organizations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "observabilityadmin_centralization_rule_for_organizations_rule" {
  description = "Map of rule values across all observabilityadmin_centralization_rule_for_organizations, keyed the same as var.observabilityadmin_centralization_rule_for_organizations"
  value       = { for k, v in aws_observabilityadmin_centralization_rule_for_organization.observabilityadmin_centralization_rule_for_organizations : k => v.rule if v.rule != null && length(v.rule) > 0 }
}
output "observabilityadmin_centralization_rule_for_organizations_rule_arn" {
  description = "Map of rule_arn values across all observabilityadmin_centralization_rule_for_organizations, keyed the same as var.observabilityadmin_centralization_rule_for_organizations"
  value       = { for k, v in aws_observabilityadmin_centralization_rule_for_organization.observabilityadmin_centralization_rule_for_organizations : k => v.rule_arn if v.rule_arn != null && length(v.rule_arn) > 0 }
}
output "observabilityadmin_centralization_rule_for_organizations_rule_name" {
  description = "Map of rule_name values across all observabilityadmin_centralization_rule_for_organizations, keyed the same as var.observabilityadmin_centralization_rule_for_organizations"
  value       = { for k, v in aws_observabilityadmin_centralization_rule_for_organization.observabilityadmin_centralization_rule_for_organizations : k => v.rule_name if v.rule_name != null && length(v.rule_name) > 0 }
}
output "observabilityadmin_centralization_rule_for_organizations_tags" {
  description = "Map of tags values across all observabilityadmin_centralization_rule_for_organizations, keyed the same as var.observabilityadmin_centralization_rule_for_organizations"
  value       = { for k, v in aws_observabilityadmin_centralization_rule_for_organization.observabilityadmin_centralization_rule_for_organizations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "observabilityadmin_centralization_rule_for_organizations_tags_all" {
  description = "Map of tags_all values across all observabilityadmin_centralization_rule_for_organizations, keyed the same as var.observabilityadmin_centralization_rule_for_organizations"
  value       = { for k, v in aws_observabilityadmin_centralization_rule_for_organization.observabilityadmin_centralization_rule_for_organizations : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

