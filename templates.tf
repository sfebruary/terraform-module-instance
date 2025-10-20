data "template_file" "server" {
  template = file("${path.module}/cloud-init-ip-injection.tmpl")

  vars = {
    admin_username       = var.admin_username
    shortname            = var.shortname
    private_port_address = openstack_networking_port_v2.server_private_port.fixed_ip[0].ip_address
  }
}

