data "azurerm_storage_account" "example" {
  name                = var.storage_account_name
  resource_group_name = var.resource_group_name
}
resource "azurerm_storage_queue" "example" {
  count                = var.no_of_queues
  name                 = var.name_of_queues[count.index]
  storage_account_name = data.azurerm_storage_account.example.name
}