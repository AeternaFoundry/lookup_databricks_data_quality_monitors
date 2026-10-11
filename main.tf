data "databricks_data_quality_monitors" "data_quality_monitors_lookup" {
  for_each = var.data_quality_monitors_lookup

  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

