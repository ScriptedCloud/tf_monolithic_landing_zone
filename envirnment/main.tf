module "resource_group" {
  source         = "../module/resource_group"
  resource = var.resource_group
}

module "vnet" {
  depends_on = [module.resource_group]
  source     = "../module/vnet"
  vnets      = var.my_vnet
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../module/subnet"
  subnets    = var.subnets
}

# module "public_ip" {
#   depends_on = [module.resource_group]
#   source     = "../module/public_ip"
#   pips    = var.pips
# }

module "virtual_machine" {
  depends_on = [module.subnet]  
  source     = "../module/virtual_machine"
  vms    = var.vms
}