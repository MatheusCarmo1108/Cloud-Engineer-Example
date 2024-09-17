variable "location" {
  description = "The Azure region to deploy resources into."
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the Azure resource group."
  type        = string
}

variable "app_service_plan_name" {
  description = "The name of the App Service Plan."
  type        = string
}

variable "app_service_name" {
  description = "The name of the App Service."
  type        = string
}

variable "database_name" {
  description = "The name of the SQL Database."
  type        = string
}

variable "sql_server_name" {
  description = "The name of the SQL Server."
  type        = string
}

variable "redis_cache_name" {
  description = "The name of the Redis Cache."
  type        = string
}

variable "redis_cache_password" {
  description = "The password for the Redis Cache."
  type        = string
  sensitive   = true
}

variable "sql_admin_username" {
  description = "The SQL Server admin username."
  type        = string
}

variable "sql_admin_password" {
  description = "The SQL Server admin password."
  type        = string
  sensitive   = true
}