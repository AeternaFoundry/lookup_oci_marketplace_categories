output "marketplace_categories_lookup_id" {
  description = "Map of id values across all marketplace_categories_lookup, keyed the same as var.marketplace_categories_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_marketplace_categories.marketplace_categories_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "marketplace_categories_lookup_categories" {
  description = "Map of categories values across all marketplace_categories_lookup, keyed the same as var.marketplace_categories_lookup except keys with no categories are omitted"
  value       = { for k, v in data.oci_marketplace_categories.marketplace_categories_lookup : k => v.categories if v.categories != null && length(v.categories) > 0 }
}
output "marketplace_categories_lookup_compartment_id" {
  description = "Map of compartment_id values across all marketplace_categories_lookup, keyed the same as var.marketplace_categories_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_marketplace_categories.marketplace_categories_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "marketplace_categories_lookup_filter" {
  description = "Map of filter values across all marketplace_categories_lookup, keyed the same as var.marketplace_categories_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_marketplace_categories.marketplace_categories_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

