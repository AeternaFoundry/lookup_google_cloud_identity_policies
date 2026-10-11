data "google_cloud_identity_policies" "cloud_identity_policies_lookup" {
  for_each = var.cloud_identity_policies_lookup

  filter = each.value.filter
}

