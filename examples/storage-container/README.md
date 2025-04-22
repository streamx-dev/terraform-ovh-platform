<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.89.0 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 2.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_storage-container"></a> [storage-container](#module\_storage-container) | streamx-dev/platform/ovh//modules/storage-container | 0.0.1 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ovh_public_cloud_project_id"></a> [ovh\_public\_cloud\_project\_id](#input\_ovh\_public\_cloud\_project\_id) | The id of the public OVH cloud project | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | S3 bucket location from [list](https://help.ovhcloud.com/csm/en-ie-public-cloud-storage-s3-location?id=kb_article_view&sysparm_article=KB0047393) | `string` | `"waw"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_key"></a> [access\_key](#output\_access\_key) | The access key created by the terraform script. To be used as `AWS_ACCESS_KEY_ID` ENV variable for Terraform S3 backend configuration. |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | endpoint to access created bucket |
| <a name="output_secret_key"></a> [secret\_key](#output\_secret\_key) | The secret key created by the terraform script.  To be used as `AWS_SECRET_ACCESS_KEY` ENV variable for Terraform S3 backend configuration. |
<!-- END_TF_DOCS -->