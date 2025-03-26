<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_openstack"></a> [openstack](#requirement\_openstack) | ~> 1.43.0 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_openstack"></a> [openstack](#provider\_openstack) | ~> 1.43.0 |
| <a name="provider_ovh"></a> [ovh](#provider\_ovh) | ~> 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [openstack_networking_floatingip_v2.floatingip](https://registry.terraform.io/providers/terraform-provider-openstack/openstack/latest/docs/resources/networking_floatingip_v2) | resource |
| [ovh_cloud_project_user.network_operator_user](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_floating_ip_pool"></a> [floating\_ip\_pool](#input\_floating\_ip\_pool) | Pool of IPs | `string` | `"Ext-Net"` | no |
| <a name="input_force_defaults_for_null_variables"></a> [force\_defaults\_for\_null\_variables](#input\_force\_defaults\_for\_null\_variables) | Enables forcing default variable values when the variable value passed to the module is null. | `bool` | `true` | no |
| <a name="input_ovh_public_cloud_project_id"></a> [ovh\_public\_cloud\_project\_id](#input\_ovh\_public\_cloud\_project\_id) | The id of the public OVH cloud project | `string` | n/a | yes |
| <a name="input_ovh_public_cloud_region"></a> [ovh\_public\_cloud\_region](#input\_ovh\_public\_cloud\_region) | A valid OVHcloud public cloud region ID in which the kubernetes resources will be available. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_floatingip"></a> [floatingip](#output\_floatingip) | Allocated floating IP for future usage |
<!-- END_TF_DOCS -->