variable "public_network_name" {
  type        = string
  description = "The name of the public network"
  default     = null
}

variable "private_network_name" {
  type        = string
  description = "The name of the private network"
  default     = null
}

variable "private_subnet_name" {
  type        = string
  description = "The name of the private subnet"
  default     = null
}

variable "server_private_port_name" {
  type        = string
  description = "The name of the private network port for the instance"
  default     = null
}

variable "server_private_ip" {
  type        = string
  description = "The fixed IP address of the instance on the private network"
  default     = null
}

variable "image_name" {
  type        = string
  description = "The image to be used for the instance"
  default     = null
}

variable "admin_username" {
  type        = string
  description = "The admin username to be used for the instance"
  default     = null
}

variable "shortname" {
  type        = string
  description = "The shortname to assign to the instance"
  default     = null
}

variable "flavor_name" {
  type        = string
  description = "The flavor for the instance"
  default     = null
}

variable "volume_name" {
  type        = string
  description = "The volume name to assign to the device"
  default     = null
}

variable "volume_size" {
  type        = string
  description = "The volume size to assign to the device"
  default     = "0"
}

variable "volume_type" {
  type        = string
  description = "The volume type to assign to the device"
  default     = null
}

variable "volume_device_path" {
  type        = string
  description = "The path to the device associated with the volume"
  default     = null
}

variable "enable_online_resize" {
  type        = bool
  description = "Enable volume to be resized on the fly or not"
  default     = null
}

variable "key_pair_name" {
  type        = string
  description = "The name of the pre-defined key-pair to use for logging in to the nodes"
  default     = null
}

variable "security_groups" {
  type        = list(any)
  description = "The list of the security groups to associate the instance with"
  default     = null
}

variable "ssh_security_group_name" {
  type        = string
  description = "The name of the security group to allow ssh access"
  default     = null
}

