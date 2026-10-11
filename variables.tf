variable "cloud_identity_policies_lookup" {
  description = <<EOT
Map of cloud_identity_policies_lookup, attributes below
Optional:
    - filter
EOT

  type = map(object({
    filter = optional(string)
  }))
}

