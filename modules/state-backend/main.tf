locals {
  s3_endpoint = "https://s3.${lower(var.region)}.io.cloud.ovh.net"
}

########################################################################################
#     User / Credential
########################################################################################

resource "ovh_cloud_project_user" "s3_admin_user" {
  service_name = var.ovh_public_cloud_project_id
  description  = "User with role to operate on object stores(s3 buckets)"
  role_name    = "objectstore_operator"
}

resource "ovh_cloud_project_user_s3_credential" "s3_admin_cred" {
  service_name = var.ovh_public_cloud_project_id
  user_id      = ovh_cloud_project_user.s3_admin_user.id
}

########################################################################################
#     Bucket
########################################################################################

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

locals {
  terraform_state_backend_config = tomap({
    for key, tf_backend_path in var.tf_backends : key =>
    templatefile("${path.module}/backend_template.tftpl", {
      endpoint = local.s3_endpoint
      region   = lower(var.region)
      bucket   = var.bucket_name
      key      = key
    })
  })
  tf_backends_with_path = tomap({ for k, v in var.tf_backends : k => v if v != null })
}

resource "local_file" "tf_backend_file" {
  for_each = local.tf_backends_with_path
  filename = each.value
  content  = local.terraform_state_backend_config[each.key]
}
