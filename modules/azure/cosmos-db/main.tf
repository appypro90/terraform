resource "azurerm_cosmosdb_account" "this" {
 name                = var.name
 resource_group_name = var.resource_group_name
 offer_type          = "Standard"
 kind                = "MongoDB"
 location            = var.location

 geo_location {
   location          = var.location
   failover_priority = 0
 }

 consistency_policy {
   consistency_level = "Session"
 }

  capabilities {
    name = "EnableMongo"
  }

  capabilities {
    name = "EnableServerless"
  }
}
