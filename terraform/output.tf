output "app_service_default_site_hostname" {
  value = azurerm_app_service.app_service.default_site_hostname
}

output "location" {
  description = "The Azure location where the resources are deployed"
  value       = azurerm_resource_group.rg.location
}

output "sql_server_name" {
  description = "The name of the SQL Server"
  value       = azurerm_mssql_server.sql_server.name
}

output "sql_database_name" {
  description = "The name of the SQL Database"
  value       = azurerm_mssql_database.sql_database.name
}

output "sql_fully_qualified_domain_name" {
  description = "The fully qualified domain name of the SQL Server"
  value       = azurerm_mssql_server.sql_server.fully_qualified_domain_name
}

# Output the Redis connection details
output "redis_hostname" {
  description = "The hostname of the Redis Cache instance"
  value       = azurerm_redis_cache.redis.hostname
}

output "redis_port" {
  description = "The port of the Redis Cache instance"
  value       = azurerm_redis_cache.redis.port
}

output "redis_access_key" {
  description = "The access key for the Redis Cache instance"
  value       = azurerm_redis_cache.redis.primary_access_key
}