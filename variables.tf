variable "backup_cloud_init" {
  description = "Set to true to backup cloud-init."
  type        = bool
  default     = true
}

variable "update_cloud_init" {
  description = "Set to true to update cloud-init."
  type        = bool
  default     = true
}

variable "gw_name" {
  description = "Edge gateway name."
  type        = string
  default     = "edge-equinix"
}

variable "site_id" {
  description = "Site ID."
  type        = string
  default     = "Equinix"
}

variable "management_interface_config" {
  description = "Management interface config type."
  type        = string
  default     = "Static"
}

variable "management_interface_ip_prefix" {
  description = "Management interface CIDR."
  type        = string
  default     = "192.168.10.101/24"
}

variable "management_default_gateway_ip" {
  description = "Management default gateway IP."
  type        = string
  default     = "192.168.10.254"
}

variable "wan_interface_ip_prefix" {
  description = "WAN interface CIDR."
  type        = string
  default     = "192.168.11.101/24"
}

variable "wan_default_gateway_ip" {
  description = "WAN default gateway IP."
  type        = string
  default     = "192.168.11.254"
}

variable "lan_interface_ip_prefix" {
  description = "LAN interface CIDR."
  type        = string
  default     = "192.168.12.101/24"
}

variable "dns_server_ip" {
  description = "Primary DNS server IP."
  type        = string
  default     = "8.8.8.8"
}

variable "secondary_dns_server_ip" {
  description = "Primary DNS server IP."
  type        = string
  default     = "8.8.4.4"
}

variable "ztp_file_type" {
  description = "ZTP file type."
  type        = string
  default     = "cloud-init"
}

variable "ztp_file_download_path" {
  description = "The folder path where the ZTP file will be downloaded."
  type        = string
  default     = "."
}

variable "local_as_number" {
  description = "BGP AS Number to assign to Edge as a Spoke."
  type        = string
  default     = "65100"
}