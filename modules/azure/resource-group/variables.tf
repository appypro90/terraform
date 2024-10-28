variable "name" {
  description = "The name of the resource group"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resource group"
  type        = map(string)
  default     = {}
}

variable "location" {
  type        = string
  description = "Specifies the supported Azure location where the resource exists."
}