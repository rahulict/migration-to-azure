vnet1 = {
  name = "vnet1"
  cidr = "10.0.0.0/16"
  subnets = [
    {
      name           = "frontend"
      address_prefix = "10.0.1.0/24"
    },
    {
      name           = "backend"
      address_prefix = "10.0.2.0/24"
    }
  ]
}

vnet2 = {
  name = "vnet2"
  cidr = "10.1.0.0/16"
  subnets = [
    {
      name           = "app"
      address_prefix = "10.1.1.0/24"
    },
    {
      name           = "db"
      address_prefix = "10.1.2.0/24"
    }
  ]
}