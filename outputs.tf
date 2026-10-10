output "connections_id" {
  description = "Map of id values across all connections, keyed the same as var.connections except keys with no id are omitted"
  value       = { for k, v in auth0_connection.connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "connections_authentication" {
  description = "Map of authentication values across all connections, keyed the same as var.connections except keys with no authentication are omitted"
  value       = { for k, v in auth0_connection.connections : k => one(v.authentication) if v.authentication != null && length(v.authentication) > 0 }
}
output "connections_connected_accounts" {
  description = "Map of connected_accounts values across all connections, keyed the same as var.connections except keys with no connected_accounts are omitted"
  value       = { for k, v in auth0_connection.connections : k => one(v.connected_accounts) if v.connected_accounts != null && length(v.connected_accounts) > 0 }
}
output "connections_cross_app_access_requesting_app" {
  description = "Map of cross_app_access_requesting_app values across all connections, keyed the same as var.connections except keys with no cross_app_access_requesting_app are omitted"
  value       = { for k, v in auth0_connection.connections : k => one(v.cross_app_access_requesting_app) if v.cross_app_access_requesting_app != null && length(v.cross_app_access_requesting_app) > 0 }
}
output "connections_cross_app_access_resource_app" {
  description = "Map of cross_app_access_resource_app values across all connections, keyed the same as var.connections except keys with no cross_app_access_resource_app are omitted"
  value       = { for k, v in auth0_connection.connections : k => one(v.cross_app_access_resource_app) if v.cross_app_access_resource_app != null && length(v.cross_app_access_resource_app) > 0 }
}
output "connections_display_name" {
  description = "Map of display_name values across all connections, keyed the same as var.connections except keys with no display_name are omitted"
  value       = { for k, v in auth0_connection.connections : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "connections_is_domain_connection" {
  description = "Map of is_domain_connection values across all connections, keyed the same as var.connections except keys with no is_domain_connection are omitted"
  value       = { for k, v in auth0_connection.connections : k => v.is_domain_connection if v.is_domain_connection != null }
}
output "connections_metadata" {
  description = "Map of metadata values across all connections, keyed the same as var.connections except keys with no metadata are omitted"
  value       = { for k, v in auth0_connection.connections : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "connections_name" {
  description = "Map of name values across all connections, keyed the same as var.connections except keys with no name are omitted"
  value       = { for k, v in auth0_connection.connections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "connections_options" {
  description = "Map of options values across all connections, keyed the same as var.connections except keys with no options are omitted"
  value       = { for k, v in auth0_connection.connections : k => one(v.options) if v.options != null && length(v.options) > 0 }
  sensitive   = true
}
output "connections_options_client_secret_wo_version" {
  description = "Map of options_client_secret_wo_version values across all connections, keyed the same as var.connections except keys with no options_client_secret_wo_version are omitted"
  value       = { for k, v in auth0_connection.connections : k => v.options_client_secret_wo_version if v.options_client_secret_wo_version != null }
}
output "connections_realms" {
  description = "Map of realms values across all connections, keyed the same as var.connections except keys with no realms are omitted"
  value       = { for k, v in auth0_connection.connections : k => v.realms if v.realms != null && length(v.realms) > 0 }
}
output "connections_show_as_button" {
  description = "Map of show_as_button values across all connections, keyed the same as var.connections except keys with no show_as_button are omitted"
  value       = { for k, v in auth0_connection.connections : k => v.show_as_button if v.show_as_button != null }
}
output "connections_strategy" {
  description = "Map of strategy values across all connections, keyed the same as var.connections except keys with no strategy are omitted"
  value       = { for k, v in auth0_connection.connections : k => v.strategy if v.strategy != null && length(v.strategy) > 0 }
}

