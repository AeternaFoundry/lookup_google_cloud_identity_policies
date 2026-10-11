output "cloud_identity_policies_lookup_id" {
  description = "Map of id values across all cloud_identity_policies_lookup, keyed the same as var.cloud_identity_policies_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_cloud_identity_policies.cloud_identity_policies_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_identity_policies_lookup_filter" {
  description = "Map of filter values across all cloud_identity_policies_lookup, keyed the same as var.cloud_identity_policies_lookup except keys with no filter are omitted"
  value       = { for k, v in data.google_cloud_identity_policies.cloud_identity_policies_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "cloud_identity_policies_lookup_policies" {
  description = "Map of policies values across all cloud_identity_policies_lookup, keyed the same as var.cloud_identity_policies_lookup except keys with no policies are omitted"
  value       = { for k, v in data.google_cloud_identity_policies.cloud_identity_policies_lookup : k => v.policies if v.policies != null && length(v.policies) > 0 }
}

