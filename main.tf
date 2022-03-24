

resource "azurerm_network_security_group" "nsg" {
  for_each            = var.nsgs  
  name                = "${each.value.name}"
  location            = var.location
  resource_group_name = var.rgname 
  tags = var.tags
}
