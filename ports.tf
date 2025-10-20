resource "openstack_networking_port_v2" "server_private_port" {
  name                  = var.server_private_port_name
  network_id            = data.openstack_networking_network_v2.private.id
  admin_state_up        = "true"
  port_security_enabled = "true"

  fixed_ip {
    subnet_id  = data.openstack_networking_subnet_v2.private.id
    ip_address = var.server_private_ip
  }
}

