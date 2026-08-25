rg_name = {

  rg1 = {

    name     = "mahi-rg"
    location = "south Africa north"
  }


}

vnets = {

  vnet1 = {

    name                = "mahi-vnet"
    address_space       = ["10.0.0.0/16"]
    resource_group_name = "mahi-rg"
    location            = "south Africa north"


  }

}

sbnt = {

  sbnt1 = {

    name                 = "fronted-subnet"
    resource_group_name  = "mahi-rg"
    virtual_network_name = "mahi-vnet"
    address_prefixes     = ["10.0.1.0/24"]

  }


  sbnt1 = {

    name                 = "backend-subnet"
    resource_group_name  = "mahi-rg"
    virtual_network_name = "mahi-vnet"
    address_prefixes     = ["10.0.2.0/24"]

  }
}

pip = {


  pip1 = {

    name                = "frontend-pip"
    location            = "south Africa north"
    resource_group_name = "mahi-rg"
    allocation_method   = "Static"
    sku                 = "Standard"

  }


  pip2 = {

    name                = "backend-pip"
    location            = "south Africa north"
    resource_group_name = "mahi-rg"
    allocation_method   = "Static"
    sku                 = "Standard"

  }

  pip3 = {

    name                = "bastion-pip"
    location            = "south Africa north"
    resource_group_name = "mahi-rg"
    allocation_method   = "Static"
    sku                 = "Standard"

  }

}

nsgdetails = {

  nsg1 = {

    name                = "frontend-nsg"
    location            = "south Africa north"
    resource_group_name = "mahi-rg"

  }

  nsg2 = {

    name                = "backend-nsg"
    location            = "south Africa north"
    resource_group_name = "mahi-rg"

  }
}
