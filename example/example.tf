locals {

  naming_convention_info = {
    name         = "001"
    project_code = "ml"
    env          = "de"
    zone         = "in"
    agency_code  = "boj"
    tier         = "pp"
  }

  tags = {
    createdBy = "Terraform"
    project   = "boj"
    Owner     = "BrettOJ"
  }

}

data "azurerm_client_config" "current" {
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_key_vault" "example" {
  name                = "konjur-akv-test"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"
}

resource "azurerm_data_factory" "example" {
  name                = "konjur-adf-test"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

module "name" {
  source = "../"
  data_factory_id = azurerm_data_factory.example.id
  key_vault_id    = azurerm_key_vault.example.id
  tags                     = local.tags
  naming_convention_info   = local.naming_convention_info
}