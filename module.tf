
resource "azurerm_data_factory_linked_service_key_vault" "example" {
  name                     = module.df_akv_link_name.naming_convention_output[var.naming_convention_info.name].names.0
  data_factory_id          = var.data_factory_id
  key_vault_id             = var.key_vault_id
  description              = var.description
  integration_runtime_name = var.integration_runtime_name
  parameters               = var.parameters
  additional_properties    = var.additional_properties
}