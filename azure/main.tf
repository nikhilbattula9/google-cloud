resource "azurerm_resource_group" "rg" {
  name     = "Azure-09"
  location = "East US"
  tags = { Environment = Test}
}

resource "azurerm_storage_account" "obsrv_st" {
  name                     = "staccountazure9"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags                     = azurerm_resource_group.rg.tags
}
