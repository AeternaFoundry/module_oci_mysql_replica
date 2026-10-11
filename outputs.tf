output "mysql_replicas_id" {
  description = "Map of id values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no id are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mysql_replicas_availability_domain" {
  description = "Map of availability_domain values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no availability_domain are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "mysql_replicas_compartment_id" {
  description = "Map of compartment_id values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no compartment_id are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "mysql_replicas_configuration_id" {
  description = "Map of configuration_id values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no configuration_id are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.configuration_id if v.configuration_id != null && length(v.configuration_id) > 0 }
}
output "mysql_replicas_db_system_id" {
  description = "Map of db_system_id values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no db_system_id are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.db_system_id if v.db_system_id != null && length(v.db_system_id) > 0 }
}
output "mysql_replicas_defined_tags" {
  description = "Map of defined_tags values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no defined_tags are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "mysql_replicas_description" {
  description = "Map of description values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no description are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.description if v.description != null && length(v.description) > 0 }
}
output "mysql_replicas_display_name" {
  description = "Map of display_name values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no display_name are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "mysql_replicas_encrypt_data" {
  description = "Map of encrypt_data values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no encrypt_data are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.encrypt_data if v.encrypt_data != null && length(v.encrypt_data) > 0 }
}
output "mysql_replicas_fault_domain" {
  description = "Map of fault_domain values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no fault_domain are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.fault_domain if v.fault_domain != null && length(v.fault_domain) > 0 }
}
output "mysql_replicas_freeform_tags" {
  description = "Map of freeform_tags values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "mysql_replicas_ip_address" {
  description = "Map of ip_address values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no ip_address are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "mysql_replicas_ipv6address" {
  description = "Map of ipv6address values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no ipv6address are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.ipv6address if v.ipv6address != null && length(v.ipv6address) > 0 }
}
output "mysql_replicas_is_delete_protected" {
  description = "Map of is_delete_protected values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no is_delete_protected are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.is_delete_protected if v.is_delete_protected != null }
}
output "mysql_replicas_lifecycle_details" {
  description = "Map of lifecycle_details values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "mysql_replicas_mysql_version" {
  description = "Map of mysql_version values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no mysql_version are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.mysql_version if v.mysql_version != null && length(v.mysql_version) > 0 }
}
output "mysql_replicas_nsg_ids" {
  description = "Map of nsg_ids values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no nsg_ids are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.nsg_ids if v.nsg_ids != null && length(v.nsg_ids) > 0 }
}
output "mysql_replicas_port" {
  description = "Map of port values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no port are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.port if v.port != null }
}
output "mysql_replicas_port_x" {
  description = "Map of port_x values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no port_x are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.port_x if v.port_x != null }
}
output "mysql_replicas_replica_overrides" {
  description = "Map of replica_overrides values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no replica_overrides are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => one(v.replica_overrides) if v.replica_overrides != null && length(v.replica_overrides) > 0 }
}
output "mysql_replicas_secure_connections" {
  description = "Map of secure_connections values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no secure_connections are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.secure_connections if v.secure_connections != null && length(v.secure_connections) > 0 }
}
output "mysql_replicas_security_attributes" {
  description = "Map of security_attributes values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no security_attributes are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.security_attributes if v.security_attributes != null && length(v.security_attributes) > 0 }
}
output "mysql_replicas_shape_name" {
  description = "Map of shape_name values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no shape_name are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.shape_name if v.shape_name != null && length(v.shape_name) > 0 }
}
output "mysql_replicas_state" {
  description = "Map of state values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no state are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.state if v.state != null && length(v.state) > 0 }
}
output "mysql_replicas_telemetry_configuration" {
  description = "Map of telemetry_configuration values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no telemetry_configuration are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.telemetry_configuration if v.telemetry_configuration != null && length(v.telemetry_configuration) > 0 }
}
output "mysql_replicas_time_created" {
  description = "Map of time_created values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no time_created are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "mysql_replicas_time_updated" {
  description = "Map of time_updated values across all mysql_replicas, keyed the same as var.mysql_replicas except keys with no time_updated are omitted"
  value       = { for k, v in oci_mysql_replica.mysql_replicas : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

