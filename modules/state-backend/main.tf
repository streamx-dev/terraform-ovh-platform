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

module "s3_bucket" {
  source                      = "../storage-container"
  ovh_public_cloud_project_id = var.ovh_public_cloud_project_id
  bucket_name                 = var.bucket_name
  region                      = var.region
  bucket_versioning           = "Enabled"
}

locals {
  terraform_state_backend_config = tomap({
    for key, tf_backend_path in var.tf_backends : key =>
    templatefile("${path.module}/backend_template.tftpl", {
      endpoint = module.s3_bucket.s3_endpoint
      region   = var.region
      bucket   = var.bucket_name
      key      = key
    })
  })
  tf_backends_with_path = tomap({for k, v in var.tf_backends : k => v if v != null})
}

resource "local_file" "tf_backend_file" {
  for_each = local.tf_backends_with_path
  filename = each.value
  content  = local.terraform_state_backend_config[each.key]
}
