provider "azurerm" {}

terraform {
  backend "azurerm" {
    resource_group_name="terraform-state"
    storage_account_name="tfstateaccounttudelft"
    container_name="tfstatecontainer"
    key="sandbox/dumbapp.tfstate"
}
