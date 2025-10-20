resource "openstack_networking_port_secgroup_associate_v2" "server_private" {
  port_id = openstack_networking_port_v2.server_private_port.id
  security_group_ids = [
    data.openstack_networking_secgroup_v2.ssh.id,
  ]
}

