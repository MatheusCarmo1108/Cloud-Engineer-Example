resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_username
  administrator_login_password = var.sql_admin_password


  tags = {
    environment = "Development"
  }
}

resource "azurerm_mssql_database" "sql_database" {
  name                = var.database_name
  server_id           = azurerm_mssql_server.sql_server.id
  sku_name            = "S0"
  max_size_gb         = 10
  tags = {
    environment = "Development"
  }
}