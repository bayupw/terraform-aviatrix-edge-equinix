# Terraform Aviatrix Edge for Equinix Fabric

Terraform module to create Aviatrix Edge in Aviatrix Controller for Equinix Fabric.

## Prerequisites

Please make sure you have:
- Aviatrix Controller 6.9 or above
- At least one CSP access accounts onboarded

To run this project, you will need to set the following environment variables or provider settings.

Variables | Description
--- | ---
AVIATRIX_CONTROLLER_IP | Aviatrix Controller IP or FQDN 
AVIATRIX_USERNAME | Aviatrix Controller Username
AVIATRIX_PASSWORD | Aviatrix Controller Password

Set environment variables

```bash
export AVIATRIX_CONTROLLER_IP="aviatrixcontroller.aviatrix.lab"
export AVIATRIX_USERNAME="admin"
export AVIATRIX_PASSWORD="aviatrix123"
```

## Sample usage

**_Notes:_** 
* Management IP address does not need to be set as they will be configured via cloud-init.
* Set ```update_cloud_init = true``` to automatically update cloud-init.txt for Equinix.

```hcl
module "aviatrix-edge-equinix" {
  source = "bayupw/edge-equinix/aviatrix"
  version = "1.0.1"

  gw_name                 = "edge-equinix-gw1"
  site_id                 = "Equinix-NY"
  wan_interface_ip_prefix = "192.168.11.101/24"
  wan_default_gateway_ip  = "192.168.11.254"
  lan_interface_ip_prefix = "192.168.12.101/24"
  local_as_number         = "65100"
  update_cloud_init       = true
}

output "aviatrix-edge-equinix" {
  value = module.aviatrix-edge-equinix
}
```

## Contributing

Report issues/questions/feature requests on in the [issues](https://github.com/bayupw/terraform-aviatrix-edge-equinix/issues/new) section.

## License

Apache 2 Licensed. See [LICENSE](https://github.com/bayupw/terraform-aviatrix-edge-equinix/tree/master/LICENSE) for full details.