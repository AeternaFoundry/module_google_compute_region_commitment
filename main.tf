resource "google_compute_region_commitment" "compute_region_commitments" {
  for_each = var.compute_region_commitments

  name                  = each.value.name
  plan                  = each.value.plan
  auto_renew            = each.value.auto_renew
  category              = each.value.category
  description           = each.value.description
  existing_reservations = each.value.existing_reservations
  project               = each.value.project
  region                = each.value.region
  type                  = each.value.type

  dynamic "license_resource" {
    for_each = each.value.license_resource != null ? [each.value.license_resource] : []
    content {
      amount            = license_resource.value.amount
      cores_per_license = license_resource.value.cores_per_license
      license           = license_resource.value.license
    }
  }

  dynamic "params" {
    for_each = each.value.params != null ? [each.value.params] : []
    content {
      resource_manager_tags = params.value.resource_manager_tags
    }
  }

  dynamic "resources" {
    for_each = each.value.resources != null ? each.value.resources : []
    content {
      accelerator_type = resources.value.accelerator_type
      amount           = resources.value.amount
      type             = resources.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

