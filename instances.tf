resource "openstack_compute_instance_v2" "server" {
  name            = var.shortname
  image_name      = var.image_name
  flavor_name     = var.flavor_name
  key_pair        = var.key_pair_name
  security_groups = var.security_groups
  config_drive    = true
  user_data       = data.template_file.server.rendered

  network {
    port = openstack_networking_port_v2.server_private_port.id
  }
}

