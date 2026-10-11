resource "oci_mysql_replica" "mysql_replicas" {
  for_each = var.mysql_replicas

  db_system_id        = each.value.db_system_id
  defined_tags        = each.value.defined_tags
  description         = each.value.description
  display_name        = each.value.display_name
  freeform_tags       = each.value.freeform_tags
  is_delete_protected = each.value.is_delete_protected

  dynamic "replica_overrides" {
    for_each = each.value.replica_overrides != null ? [each.value.replica_overrides] : []
    content {
      configuration_id    = replica_overrides.value.configuration_id
      mysql_version       = replica_overrides.value.mysql_version
      nsg_ids             = replica_overrides.value.nsg_ids
      security_attributes = replica_overrides.value.security_attributes
      shape_name          = replica_overrides.value.shape_name
      dynamic "telemetry_configuration" {
        for_each = replica_overrides.value.telemetry_configuration != null ? [replica_overrides.value.telemetry_configuration] : []
        content {
          dynamic "logs" {
            for_each = telemetry_configuration.value.logs != null ? telemetry_configuration.value.logs : []
            content {
              destination = logs.value.destination
              dynamic "destination_configurations" {
                for_each = logs.value.destination_configurations
                content {
                  key   = destination_configurations.value.key
                  value = destination_configurations.value.value
                }
              }
              log_types = logs.value.log_types
            }
          }
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

