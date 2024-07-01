vnet1 = {
  name = "vnet1"
  cidr = "10.0.0.0/16"
  subnet_names = [ "frontend", "backend" ]
  subnet_prefixes = [ "10.0.1.0/24", "10.0.2.0/24" ]
}

vnet2 = {
  name = "vnet2"
  cidr = "10.1.0.0/16"
  subnet_names = [ "frontend", "backend" ]
  subnet_prefixes = [ "10.1.1.0/24", "10.1.2.0/24" ]
}