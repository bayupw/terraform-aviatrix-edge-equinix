resource "aviatrix_edge_spoke" "this" {
  gw_name                        = var.gw_name
  site_id                        = var.site_id
  management_interface_config    = var.management_interface_config
  management_interface_ip_prefix = var.management_interface_ip_prefix
  management_default_gateway_ip  = var.management_default_gateway_ip
  wan_interface_ip_prefix        = var.wan_interface_ip_prefix
  wan_default_gateway_ip         = var.wan_default_gateway_ip
  lan_interface_ip_prefix        = var.lan_interface_ip_prefix
  dns_server_ip                  = var.dns_server_ip
  secondary_dns_server_ip        = var.secondary_dns_server_ip
  ztp_file_type                  = var.ztp_file_type
  ztp_file_download_path         = var.ztp_file_download_path
  local_as_number                = var.local_as_number
}