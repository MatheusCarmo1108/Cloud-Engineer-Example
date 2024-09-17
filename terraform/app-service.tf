resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "app_service" {
  name                = var.app_service_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id

  app_settings = {
    "WEBSITE_RUN_FROM_PACKAGE" = "1"
    "DB_CONNECTION_STRING"     = "Server=tcp:${azurerm_mssql_server.sql_server.fully_qualified_domain_name},1433;Database=${azurerm_mssql_database.sql_database.name};User ID=${var.sql_admin_username};Password=${var.sql_admin_password};"
    "REDIS_CONNECTION_STRING"  = "redis://${azurerm_redis_cache.redis.hostname}:${azurerm_redis_cache.redis.port},password=${var.redis_cache_password}"
  }

  site_config {
    dotnet_framework_version = "v4.0"
  }

  tags = {
    environment = "Development"
    version = "0.0.1"
  }
}