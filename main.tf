terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# STEP 5️⃣ Resource Group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

# STEP 6️⃣ App Service Plan
resource "azurerm_service_plan" "asp" {
  name                = "terraform-appservice-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = "B1"
}

# STEP 7️⃣ Azure Web App
resource "azurerm_linux_web_app" "webapp" {
  name                = var.webapp_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    application_stack {
      node_version = "18-lts"
    }
  }
}

# STEP 8️⃣ Deployment Slot (staging)
resource "azurerm_linux_web_app_slot" "staging" {
  name           = "staging"
  app_service_id = azurerm_linux_web_app.webapp.id

  site_config {
    application_stack {
      node_version = "18-lts"
    }
  }
}
