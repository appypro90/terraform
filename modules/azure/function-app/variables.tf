variable "function_app_name" {
  type        = string
  description = "The name of the Function App."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the Function App."
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists."
}

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account."
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}

variable "app_settings" {
  type        = map(string)
  description = "A mapping of app settings to assign to the resource."
}

variable "linux_fx_version" {
  type        = string
  description = "A mapping of site configs to assign to the resource."
}