variable "data_factory_id" {
  type        = string
  description = "(Required) The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource."

}

variable "key_vault_id" {
  type        = string
  description = "(Required) The ID the Azure Key Vault resource."

}

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

variable "tags" {
  type        = map(any)
  description = "(Optional) A mapping of tags to assign to the resource."

}

variable "naming_convention_info" {
  type        = map(any)
  description = "(Optional) A mapping of naming convention information."

}