

variable "description" {
  type        = string
  description = "(Optional) The description for the Data Factory Linked Service Key Vault."
  default     = null
}

variable "integration_runtime_name" {
  type        = string
  description = "(Optional) The integration runtime reference to associate with the Data Factory Linked Service Key Vault."
  default     = null
}

variable "annotations" {
  type        = map(any)
  description = "(Optional) List of tags that can be used for describing the Data Factory Linked Service Key Vault."
  default     = null
}

variable "parameters" {
  type        = map(any)
  description = "(Optional) A map of parameters to associate with the Data Factory Linked Service Key Vault."
  default     = null
}

variable "additional_properties" {
  type        = map(any)
  description = "(Optional) A map of additional properties to associate with the Data Factory Linked Service Key Vault."
  default     = null
}

