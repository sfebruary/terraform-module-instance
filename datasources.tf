data "openstack_networking_network_v2" "private" {
  name = var.private_network_name
}

data "openstack_networking_subnet_v2" "private" {
  name = var.private_subnet_name
}

data "openstack_networking_secgroup_v2" "ssh" {
  name = var.ssh_security_group_name
}

