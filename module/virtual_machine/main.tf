resource "azurerm_network_interface" "main_nic" {
  for_each            = var.vms
  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = "test1029"
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    # public_ip_address_id          = data.azurerm_public_ip.pip[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "main" {
  for_each            = var.vms
  name                = each.value.vm_name
  location            = each.value.location
  resource_group_name = each.value.rg_name
  vm_size             = each.value.vm_size

  network_interface_ids = [azurerm_network_interface.main_nic[each.key].id]

  storage_image_reference {
    publisher = each.value.image_publisher
    offer     = each.value.image_offer
    sku       = each.value.image_sku
    version   = each.value.image_version
  }

  storage_os_disk {
    name              = each.value.vm_name
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  os_profile {
    computer_name  = each.value.vm_name
    admin_username = each.value.username
    admin_password = each.value.password
  }

}
