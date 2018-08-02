resource "azurerm_virtual_network" "vnet" {
  name                = "${var.vnet_name}"
  location            = "${var.location}"
  address_space       = ["${var.address_space}"]
  resource_group_name = "${var.resource_group_name}"
  # dns_servers         = "${var.dns_servers}"
  # tags                = "${var.tags}"
}

resource "azurerm_subnet" "mysubnet" {
  depends_on          = ["azurerm_virtual_network.vnet"]
  name                      = "${var.subnet_names[count.index]}"
  virtual_network_name      = "${azurerm_virtual_network.vnet.name}"
  resource_group_name       = "${var.resource_group_name}"
  address_prefix            = "${var.subnet_prefixes[count.index]}"
  route_table_id            = "${var.route_tables[count.indexx]}"
  # network_security_group_id = "${lookup(var.nsg_ids,var.subnet_names[count.index],"")}"
  # network_security_group_id = "${azurerm_network_security_group.ssh.id}"
  count                     = "${length(var.subnet_names)}"
} 
