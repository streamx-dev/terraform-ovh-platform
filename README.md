## OVH Provider Configuration

To use OVH provider, specify your credentials as follows:
```terraform
provider "ovh" {
  endpoint      = <OVH_ENDPOINT>
  client_id     = <OVH_CLIENT_ID>
  client_secret = <OVH_CLIENT_SECRET>
}
```

Please refer to the official [OVH Provider Documentation](https://registry.terraform.io/providers/ovh/ovh/latest/docs#oauth2).

For more details including obtaining your OAuth 2.0 credentials ask @kamilchociej.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8.1 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 2.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cluster"></a> [cluster](#module\_cluster) | ./modules/cluster | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the kubernetes cluster. | `string` | `"streamx"` | no |
| <a name="input_force_defaults_for_null_variables"></a> [force\_defaults\_for\_null\_variables](#input\_force\_defaults\_for\_null\_variables) | Enables forcing default variable values when the variable value passed to the module is null. | `bool` | `true` | no |
| <a name="input_kubeconfig_path"></a> [kubeconfig\_path](#input\_kubeconfig\_path) | Script creates kubeconfig file with provided path. No file is created when null is provided. | `any` | `null` | no |
| <a name="input_node_pool_autoscale"></a> [node\_pool\_autoscale](#input\_node\_pool\_autoscale) | Enable auto-scaling for the pool. | `bool` | `true` | no |
| <a name="input_node_pool_autoscaling_scale_down_unneeded_time_seconds"></a> [node\_pool\_autoscaling\_scale\_down\_unneeded\_time\_seconds](#input\_node\_pool\_autoscaling\_scale\_down\_unneeded\_time\_seconds) | ScaleDownUnneededTimeSeconds autoscaling parameter How long a node should be unneeded before it is eligible for scale down | `number` | `1200` | no |
| <a name="input_node_pool_desired_nodes"></a> [node\_pool\_desired\_nodes](#input\_node\_pool\_desired\_nodes) | Number of nodes to start. | `number` | `5` | no |
| <a name="input_node_pool_flavor_name"></a> [node\_pool\_flavor\_name](#input\_node\_pool\_flavor\_name) | A valid OVHcloud public cloud flavor ID in which the nodes will be started. Ex: b2-7. You can find the list of flavor IDs: https://www.ovhcloud.com/fr/public-cloud/prices/. | `string` | `"d2-8"` | no |
| <a name="input_node_pool_max_nodes"></a> [node\_pool\_max\_nodes](#input\_node\_pool\_max\_nodes) | Maximum number of nodes allowed in the pool. Setting desired\_nodes over this value will raise an error. | `number` | `10` | no |
| <a name="input_node_pool_min_nodes"></a> [node\_pool\_min\_nodes](#input\_node\_pool\_min\_nodes) | Minimum number of nodes allowed in the pool. Setting desired\_nodes under this value will raise an error. | `number` | `5` | no |
| <a name="input_node_pool_name"></a> [node\_pool\_name](#input\_node\_pool\_name) | The name of the node\_pool. Warning: \_ char is not allowed! Changing this value recreates the resource. | `string` | `"streamx"` | no |
| <a name="input_ovh_public_cloud_project_id"></a> [ovh\_public\_cloud\_project\_id](#input\_ovh\_public\_cloud\_project\_id) | The id of the public OVH cloud project | `string` | n/a | yes |
| <a name="input_ovh_public_cloud_region"></a> [ovh\_public\_cloud\_region](#input\_ovh\_public\_cloud\_region) | Region of cloud deployment | `string` | `"GRA11"` | no |
| <a name="input_public_static_ip_address"></a> [public\_static\_ip\_address](#input\_public\_static\_ip\_address) | Public IP address | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_client_certificate"></a> [client\_certificate](#output\_client\_certificate) | K8s cluster kubeconfig |
| <a name="output_client_key"></a> [client\_key](#output\_client\_key) | K8s cluster kubeconfig |
| <a name="output_cluster_ca_certificate"></a> [cluster\_ca\_certificate](#output\_cluster\_ca\_certificate) | K8s cluster kubeconfig |
| <a name="output_cluster_id"></a> [cluster\_id](#output\_cluster\_id) | K8s cluster id |
| <a name="output_host"></a> [host](#output\_host) | K8s cluster kubeconfig |
| <a name="output_kubeconfig"></a> [kubeconfig](#output\_kubeconfig) | K8s cluster kubeconfig |
| <a name="output_kubeconfig_path"></a> [kubeconfig\_path](#output\_kubeconfig\_path) | K8s cluster kubeconfig file path |
<!-- END_TF_DOCS -->