# Copyright 2025 Dynamic Solutions Sp. z o.o. sp.k.

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

locals {
  s3_endpoint                  = "https://s3.${var.region}.io.cloud.ovh.net"
  default_bucket_name          = "streamxdsf"
  default_bucket_versioning    = "Disabled"
  default_bucket_force_destroy = false
  bucket_name                  = var.force_defaults_for_null_variables && var.bucket_name == null ? local.default_bucket_name : var.bucket_name
  bucket_versioning            = var.force_defaults_for_null_variables && var.bucket_versioning == null ? local.default_bucket_versioning : var.bucket_versioning
  bucket_force_destroy         = var.force_defaults_for_null_variables && var.bucket_force_destroy == null ? local.default_bucket_force_destroy : var.bucket_force_destroy
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
  bucket        = var.bucket_name
  force_destroy = local.bucket_force_destroy
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = var.bucket_versioning
  }
}
