variable "ovh_public_cloud_project_id" {
  description = "OVH Public cloud project id"
  type        = string
}

variable "region" {
  description = "S3 bucket location from [list](https://help.ovhcloud.com/csm/en-ie-public-cloud-storage-s3-location?id=kb_article_view&sysparm_article=KB0047393)"
  type        = string
}

variable "s3_endpoint" {
  default     = null
  description = "If not set endpoint will be build from region. OVH S3 endpoint from [list](https://help.ovhcloud.com/csm/en-ie-public-cloud-storage-s3-location?id=kb_article_view&sysparm_article=KB0047393)"
  type        = string
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

variable "tf_backends" {
  description = "Terraform backends defined as map where key is state backend key and value is a path where backend configuration is created."
  type        = map(string)
}
