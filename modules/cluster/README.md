<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 1.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_ovh"></a> [ovh](#provider\_ovh) | ~> 1.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_sensitive_file.kubeconfig](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/sensitive_file) | resource |
| [ovh_cloud_project_kube.cluster](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_kube) | resource |
| [ovh_cloud_project_kube_nodepool.node_pool](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_kube_nodepool) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | The name of the kubernetes cluster. | `string` | `"streamx"` | no |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | Network id to attach cluster | `string` | n/a | yes |
| <a name="input_nodes_subnet_id"></a> [nodes\_subnet\_id](#input\_nodes\_subnet\_id) | Nodes subnet ID | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | A valid OVHcloud public cloud region ID in which the kubernetes cluster will be available. | `string` | `"WAW1"` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | The id of the public OVH cloud project | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kubeconfig"></a> [kubeconfig](#output\_kubeconfig) | K8s cluster kubeconfig |
| <a name="output_kubeconfig_path"></a> [kubeconfig\_path](#output\_kubeconfig\_path) | K8s cluster kubeconfig file path |
<!-- END_TF_DOCS -->