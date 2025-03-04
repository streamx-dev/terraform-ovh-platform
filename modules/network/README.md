<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_openstack"></a> [openstack](#requirement\_openstack) | ~> 1.43.0 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 1.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_openstack"></a> [openstack](#provider\_openstack) | ~> 1.43.0 |
| <a name="provider_ovh"></a> [ovh](#provider\_ovh) | ~> 1.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [openstack_networking_floatingip_v2.floatingip](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_floatingip_v2) | resource |
| [ovh_cloud_project_gateway.gateway](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_gateway) | resource |
| [ovh_cloud_project_network_private.network](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_network_private) | resource |
| [ovh_cloud_project_network_private_subnet.subnet](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_network_private_subnet) | resource |
| [ovh_cloud_project_user.network_operator_user](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloud_region"></a> [cloud\_region](#input\_cloud\_region) | A valid OVHcloud public cloud region ID in which the kubernetes resources will be available. | `string` | `"WAW1"` | no |
| <a name="input_floating_ip_pool"></a> [floating\_ip\_pool](#input\_floating\_ip\_pool) | pool if IPs | `string` | `"Ext-Net"` | no |
| <a name="input_gateway_model"></a> [gateway\_model](#input\_gateway\_model) | gateway model | `string` | `"s"` | no |
| <a name="input_gateway_name"></a> [gateway\_name](#input\_gateway\_name) | name of gateway | `string` | `"streamx-gateway"` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | name of network | `string` | `"streamx-network"` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | The id of the public OVH cloud project | `string` | n/a | yes |
| <a name="input_subnet_end"></a> [subnet\_end](#input\_subnet\_end) | Last ip for this region | `string` | `"192.168.168.254"` | no |
| <a name="input_subnet_network"></a> [subnet\_network](#input\_subnet\_network) | Global network in CIDR format | `string` | `"192.168.168.0/24"` | no |
| <a name="input_subnet_start"></a> [subnet\_start](#input\_subnet\_start) | First ip for this region | `string` | `"192.168.168.10"` | no |
| <a name="input_vlan_id"></a> [vlan\_id](#input\_vlan\_id) | Id of vlan | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_floatingip"></a> [floatingip](#output\_floatingip) | Allocated floating IP for future usage |
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | Network id to attach cluster |
| <a name="output_nodes_subnet_id"></a> [nodes\_subnet\_id](#output\_nodes\_subnet\_id) | Nodes subnet ID |
<!-- END_TF_DOCS -->