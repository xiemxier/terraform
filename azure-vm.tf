provider "azurerm" {
  subscription_id = ""
  client_id = ""
  client_secret = ""
  tenant_id = ""
}


resource "azurerm_virtual_machine" "test-tf" {
  location = "southeastasia"
  name = "test-tf"
  network_interface_ids = []
  resource_group_name = "NhanLA-TF"
  vm_size = "Standard_B1ms"
  "storage_os_disk" {
    create_option = "FromImage"
    name = "myOsDisk"
  }
}