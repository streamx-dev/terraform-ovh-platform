<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_openstack"></a> [openstack](#requirement\_openstack) | ~> 1.43.0 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 2.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_network"></a> [network](#module\_network) | streamx-dev/platform/ovh//modules/network | 0.0.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_force_defaults_for_null_variables"></a> [force\_defaults\_for\_null\_variables](#input\_force\_defaults\_for\_null\_variables) | Enables forcing default variable values when the variable value passed to the module is null. | `bool` | `true` | no |
| <a name="input_ovh_public_cloud_project_id"></a> [ovh\_public\_cloud\_project\_id](#input\_ovh\_public\_cloud\_project\_id) | The id of the public OVH cloud project | `string` | n/a | yes |
| <a name="input_ovh_public_cloud_region"></a> [ovh\_public\_cloud\_region](#input\_ovh\_public\_cloud\_region) | A valid OVHcloud public cloud region ID in which the kubernetes resources will be available. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_floatingip"></a> [floatingip](#output\_floatingip) | Allocated floating IP for future usage |
<!-- END_TF_DOCS -->