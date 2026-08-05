resource_group = {
  rg1 = {
    rg_name  = "myrg1"
    location = "centralindia"
  }
}
my_vnet = {
  vnet1 = {
    vnet_name     = "myvnet"
    rg_name       = "myrg1"
    location      = "centralindia"
    address_space = ["10.143.0.0/16"]
  }
}
subnets = {
  subnet1 = {
    subnet_name   = "frontend_subnet"
    rg_name       = "myrg1"
    vnet_name     = "myvnet"
    subnet_prefix = ["10.143.1.0/24"]
  }
  subnet2 = {
    subnet_name   = "backend_subnet"
    rg_name       = "myrg1"
    vnet_name     = "myvnet"
    subnet_prefix = ["10.143.2.0/24"]
  }
}
# pips ={
#     pip1={
#         pip_name="public_ip1"
#         rg_name="myrg1"
#         location="centralindia"
#         allocation_method="Static"
#     }
#      pip2={
#         pip_name="public_ip2"
#         rg_name="myrg1"
#         location="centralindia"
#         allocation_method="Static"
#     }
# }

vms ={
    vm1={
        nic_name="nic1"
        location="centralindia"
        rg_name="myrg1"
        nic_subnet_name="frontend_subnet"
        nic_vnet_name="myvnet"
        nic_pip_name="public_ip1"
        vm_name="linuxvm1"
        vm_size="Standard_DC1ds_v3"
        username="frontend_vm"
        password="Hello@2026frontend"
        image_publisher="Canonical"
        image_offer="0001-com-ubuntu-server-jammy"
        image_sku="22_04-lts-gen2"
        image_version="latest"

    }
      vm2={
        nic_name="nic2"
        location="centralindia"
        rg_name="myrg1"
        nic_subnet_name="backend_subnet"
        nic_vnet_name="myvnet"
        nic_pip_name="public_ip2"
        vm_name="linuxvm2"
        vm_size="Standard_DC1ds_v3"
        username="backend_vm"
        password="Hello@2026backend"
        image_publisher="Canonical"
        image_offer="0001-com-ubuntu-server-jammy"
        image_sku="22_04-lts-gen2"
        image_version="latest"

    }
}