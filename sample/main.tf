provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "../"

  name     = "nimbus2"
  location = "centralus"

  resource_tags = {
    environment = "development"
  }
}
