output "compute_region_commitments_id" {
  description = "Map of id values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no id are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_region_commitments_auto_renew" {
  description = "Map of auto_renew values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no auto_renew are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.auto_renew if v.auto_renew != null }
}
output "compute_region_commitments_category" {
  description = "Map of category values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no category are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.category if v.category != null && length(v.category) > 0 }
}
output "compute_region_commitments_commitment_id" {
  description = "Map of commitment_id values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no commitment_id are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.commitment_id if v.commitment_id != null }
}
output "compute_region_commitments_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_region_commitments_description" {
  description = "Map of description values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no description are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_region_commitments_end_timestamp" {
  description = "Map of end_timestamp values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no end_timestamp are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.end_timestamp if v.end_timestamp != null && length(v.end_timestamp) > 0 }
}
output "compute_region_commitments_existing_reservations" {
  description = "Map of existing_reservations values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no existing_reservations are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.existing_reservations if v.existing_reservations != null && length(v.existing_reservations) > 0 }
}
output "compute_region_commitments_license_resource" {
  description = "Map of license_resource values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no license_resource are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => one(v.license_resource) if v.license_resource != null && length(v.license_resource) > 0 }
}
output "compute_region_commitments_name" {
  description = "Map of name values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no name are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_region_commitments_params" {
  description = "Map of params values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no params are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => one(v.params) if v.params != null && length(v.params) > 0 }
}
output "compute_region_commitments_plan" {
  description = "Map of plan values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no plan are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.plan if v.plan != null && length(v.plan) > 0 }
}
output "compute_region_commitments_project" {
  description = "Map of project values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no project are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_region_commitments_region" {
  description = "Map of region values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no region are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_region_commitments_resources" {
  description = "Map of resources values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no resources are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.resources if v.resources != null && length(v.resources) > 0 }
}
output "compute_region_commitments_self_link" {
  description = "Map of self_link values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no self_link are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_region_commitments_start_timestamp" {
  description = "Map of start_timestamp values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no start_timestamp are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.start_timestamp if v.start_timestamp != null && length(v.start_timestamp) > 0 }
}
output "compute_region_commitments_status" {
  description = "Map of status values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no status are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.status if v.status != null && length(v.status) > 0 }
}
output "compute_region_commitments_status_message" {
  description = "Map of status_message values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no status_message are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.status_message if v.status_message != null && length(v.status_message) > 0 }
}
output "compute_region_commitments_type" {
  description = "Map of type values across all compute_region_commitments, keyed the same as var.compute_region_commitments except keys with no type are omitted"
  value       = { for k, v in google_compute_region_commitment.compute_region_commitments : k => v.type if v.type != null && length(v.type) > 0 }
}

