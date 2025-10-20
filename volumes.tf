resource "openstack_blockstorage_volume_v3" "volume" {
  count = var.volume_size > 0 ? 1 : 0
  name = var.volume_name
  size = var.volume_size
  volume_type = var.volume_type
  enable_online_resize = var.enable_online_resize
}

resource "openstack_compute_volume_attach_v2" "volume_attachments" {
  count = var.volume_size > 0 ? 1 : 0
  instance_id = "${openstack_compute_instance_v2.server.id}"
  volume_id = "${openstack_blockstorage_volume_v3.volume[0].id}"
  device = var.volume_device_path
}

