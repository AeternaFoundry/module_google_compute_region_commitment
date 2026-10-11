variable "compute_region_commitments" {
  description = <<EOT
Map of compute_region_commitments, attributes below
Required:
    - name
    - plan
Optional:
    - auto_renew
    - category
    - description
    - existing_reservations
    - project
    - region
    - type
    - license_resource (block):
        - amount (optional)
        - cores_per_license (optional)
        - license (required)
    - params (block):
        - resource_manager_tags (optional)
    - resources (block):
        - accelerator_type (optional)
        - amount (optional)
        - type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    name                  = string
    plan                  = string
    auto_renew            = optional(bool)
    category              = optional(string)
    description           = optional(string)
    existing_reservations = optional(string)
    project               = optional(string)
    region                = optional(string)
    type                  = optional(string)
    license_resource = optional(object({
      amount            = optional(string)
      cores_per_license = optional(string)
      license           = string
    }))
    params = optional(object({
      resource_manager_tags = optional(map(string))
    }))
    resources = optional(list(object({
      accelerator_type = optional(string)
      amount           = optional(string)
      type             = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

