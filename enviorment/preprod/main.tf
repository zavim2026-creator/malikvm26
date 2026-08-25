module "Azure_resource_group" {

  source  = "../../module/azure_resource_group"
  rg_name = var.rg_name

}

module "virtual_network" {

  source = "../../module/azure_virtual_network"
  vnets  = var.vnets

  depends_on = [module.Azure_resource_group]


}

module "subnet" {

  source     = "../../module/azure_subnet"
  sbnt       = var.sbnt
  depends_on = [module.virtual_network]


}

module "public_ip" {

source = "../../module/Azurerm_public_ip"
pip = var.pip

depends_on = [module.Azure_resource_group] 

}

module "azurerm_nsg" {

  source = "../../module/azurerm_nsg"

nsgdetails = var.nsgdetails

  depends_on = [module.Azure_resource_group]
  

}
