variable "environment" {
  description = "The name of the environment"
  type        = string
}

variable "common_tags" {
  description = "values to use for common tags"
  default =  {
    project     = "project2"
  }
}