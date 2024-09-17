resource "azurerm_redis_cache" "redis" {
  name                = var.redis_cache_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  capacity            = 1
  family              = "C"
  sku_name            = "Basic"
  redis_version       = "6"

  tags = {
    environment = "Production"
    version = "0.0.1"
  }
}
