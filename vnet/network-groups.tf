# resource "azurerm_network_security_group" "ssh" {
#   name                = "network-security-group"
#   location            = "${var.location}"
#   resource_group_name = "${var.resource_group_name}"

#   security_rule {
#     name                       = "security-rule"
#     priority                   = 100
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "Tcp"
#     source_port_range          = "*"
#     destination_port_range     = "22"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }
# }

# output "ssh" {
#   value = "${azurerm_network_security_group.ssh.name}"
# }
