output "connections_id" {
  description = "Map of id values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => v.id }
}
output "connections_authentication" {
  description = "Map of authentication values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => one(v.authentication) }
}
output "connections_connected_accounts" {
  description = "Map of connected_accounts values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => one(v.connected_accounts) }
}
output "connections_cross_app_access_requesting_app" {
  description = "Map of cross_app_access_requesting_app values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => one(v.cross_app_access_requesting_app) }
}
output "connections_cross_app_access_resource_app" {
  description = "Map of cross_app_access_resource_app values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => one(v.cross_app_access_resource_app) }
}
output "connections_display_name" {
  description = "Map of display_name values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => v.display_name }
}
output "connections_is_domain_connection" {
  description = "Map of is_domain_connection values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => v.is_domain_connection }
}
output "connections_metadata" {
  description = "Map of metadata values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => v.metadata }
}
output "connections_name" {
  description = "Map of name values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => v.name }
}
output "connections_options" {
  description = "Map of options values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => one(v.options) }
  sensitive   = true
}
output "connections_options_client_secret_wo_version" {
  description = "Map of options_client_secret_wo_version values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => v.options_client_secret_wo_version }
}
output "connections_realms" {
  description = "Map of realms values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => v.realms }
}
output "connections_show_as_button" {
  description = "Map of show_as_button values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => v.show_as_button }
}
output "connections_strategy" {
  description = "Map of strategy values across all connections, keyed the same as var.connections"
  value       = { for k, v in auth0_connection.connections : k => v.strategy }
}

