<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.89.0 |
| <a name="requirement_ovh"></a> [ovh](#requirement\_ovh) | ~> 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 5.89.0 |
| <a name="provider_local"></a> [local](#provider\_local) | n/a |
| <a name="provider_ovh"></a> [ovh](#provider\_ovh) | ~> 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_versioning.versioning](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [local_file.tf_backend_file](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [ovh_cloud_project_user.s3_admin_user](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_user) | resource |
| [ovh_cloud_project_user_s3_credential.s3_admin_cred](https://registry.terraform.io/providers/ovh/ovh/latest/docs/resources/cloud_project_user_s3_credential) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | S3 bucket name | `string` | n/a | yes |
| <a name="input_ovh_public_cloud_project_id"></a> [ovh\_public\_cloud\_project\_id](#input\_ovh\_public\_cloud\_project\_id) | OVH Public cloud project id | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | S3 bucket location from [list](https://help.ovhcloud.com/csm/en-ie-public-cloud-storage-s3-location?id=kb_article_view&sysparm_article=KB0047393) | `string` | n/a | yes |
| <a name="input_tf_backends"></a> [tf\_backends](#input\_tf\_backends) | Terraform backends defined as map where key is state backend key and value is a path where backend configuration is created. | `map(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_key"></a> [access\_key](#output\_access\_key) | The access key created by the terraform script. To be used as `AWS_ACCESS_KEY_ID` ENV variable for Terraform S3 backend configuration. |
| <a name="output_s3_endpoint"></a> [s3\_endpoint](#output\_s3\_endpoint) | Endpoint of created s3 bucket |
| <a name="output_secret_key"></a> [secret\_key](#output\_secret\_key) | The secret key created by the terraform script.  To be used as `AWS_SECRET_ACCESS_KEY` ENV variable for Terraform S3 backend configuration. |
| <a name="output_tf_state_backend_config"></a> [tf\_state\_backend\_config](#output\_tf\_state\_backend\_config) | The Terraform state backend configuration that is set up to utilize a bucket created by this module. |
<!-- END_TF_DOCS -->