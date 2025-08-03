resource "scaleway_vpc" "main_vpc" {
  name = "pfe-vpc"
}

resource "scaleway_vpc_private_network" "private_net" {
  name   = "pfe-private-net"
  vpc_id = scaleway_vpc.main_vpc.id
}
