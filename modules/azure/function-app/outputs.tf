output "function_app_name" {
  value       = azurerm_linux_function_app.this.name
  description = "The name of the Function App."
}

output "function_app_default_hostname" {
  value       = azurerm_linux_function_app.this.default_hostname
  description = "The default hostname of the Function App."
}