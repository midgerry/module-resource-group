##############################################################
# This module allows the creation of a Resource Group
##############################################################

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.90.0"
    }
  }
}
