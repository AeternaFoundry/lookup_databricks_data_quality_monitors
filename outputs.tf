output "data_quality_monitors_lookup_monitors" {
  description = "Map of monitors values across all data_quality_monitors_lookup, keyed the same as var.data_quality_monitors_lookup except keys with no monitors are omitted"
  value       = { for k, v in data.databricks_data_quality_monitors.data_quality_monitors_lookup : k => v.monitors if v.monitors != null && length(v.monitors) > 0 }
}
output "data_quality_monitors_lookup_page_size" {
  description = "Map of page_size values across all data_quality_monitors_lookup, keyed the same as var.data_quality_monitors_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_data_quality_monitors.data_quality_monitors_lookup : k => v.page_size if v.page_size != null }
}
output "data_quality_monitors_lookup_provider_config" {
  description = "Map of provider_config values across all data_quality_monitors_lookup, keyed the same as var.data_quality_monitors_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_data_quality_monitors.data_quality_monitors_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}

