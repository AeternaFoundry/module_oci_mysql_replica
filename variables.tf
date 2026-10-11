variable "mysql_replicas" {
  description = <<EOT
Map of mysql_replicas, attributes below
Required:
    - db_system_id
Optional:
    - defined_tags
    - description
    - display_name
    - freeform_tags
    - is_delete_protected
    - replica_overrides (block):
        - configuration_id (optional)
        - mysql_version (optional)
        - nsg_ids (optional)
        - security_attributes (optional)
        - shape_name (optional)
        - telemetry_configuration (optional, block):
            - logs (optional, block):
                - destination (required)
                - destination_configurations (required, block):
                    - key (required)
                    - value (required)
                - log_types (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    db_system_id        = string
    defined_tags        = optional(map(string))
    description         = optional(string)
    display_name        = optional(string)
    freeform_tags       = optional(map(string))
    is_delete_protected = optional(bool)
    replica_overrides = optional(object({
      configuration_id    = optional(string)
      mysql_version       = optional(string)
      nsg_ids             = optional(set(string))
      security_attributes = optional(map(string))
      shape_name          = optional(string)
      telemetry_configuration = optional(object({
        logs = optional(list(object({
          destination = string
          destination_configurations = list(object({
            key   = string
            value = string
          }))
          log_types = list(string)
        })))
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.mysql_replicas : (
        v.replica_overrides == null || (v.replica_overrides.telemetry_configuration == null || (v.replica_overrides.telemetry_configuration.logs == null || alltrue([for item in v.replica_overrides.telemetry_configuration.logs : (length(item.destination_configurations) >= 1)])))
      )
    ])
    error_message = "Each destination_configurations list must contain at least 1 items"
  }
}

