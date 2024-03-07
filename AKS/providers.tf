terraform {
  required_version = ">=1.0"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "aks-practice"
    storage_account_name = "akspracticejai"
    container_name       = "aks-tfstate"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {

subscription_id  =  "e4af080c-1202-409e-9abd-2518187116ef"
tenant_id  =  "39cd4d47-b4c4-4d84-a53f-580dde271270"
client_id  =  "be3170dc-1eeb-42ae-94a7-b846776aa958"
client_secret  =  "jql8Q~KkZ515CkNwunSpAzz61fRWIqSbTpFuqakp"

  features {}
}