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

output "access_key" {
  description = "The access key created by the terraform script. To be used as `AWS_ACCESS_KEY_ID` ENV variable for Terraform S3 backend configuration."
  value       = ovh_cloud_project_user_s3_credential.s3_admin_cred.access_key_id
}

output "secret_key" {
  description = "The secret key created by the terraform script.  To be used as `AWS_SECRET_ACCESS_KEY` ENV variable for Terraform S3 backend configuration."
  value       = ovh_cloud_project_user_s3_credential.s3_admin_cred.secret_access_key
  sensitive   = true
}

output "s3_endpoint" {
  description = "Endpoint of created s3 bucket"
  value       = local.s3_endpoint
}

output "tf_state_backend_config" {
  description = "The Terraform state backend configuration that is set up to utilize a bucket created by this module."
  value       = local.terraform_state_backend_config
}
