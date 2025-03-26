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

variable "force_defaults_for_null_variables" {
  default     = true
  description = "Enables forcing default variable values when the variable value passed to the module is null."
  type        = bool
}

variable "ovh_public_cloud_project_id" {
  description = "OVH Public cloud project id"
  type        = string
}

variable "region" {
  description = "S3 bucket location from [list](https://help.ovhcloud.com/csm/en-ie-public-cloud-storage-s3-location?id=kb_article_view&sysparm_article=KB0047393)"
  type        = string
}

variable "bucket_name" {
  default     = "streamxdsf"
  description = "S3 bucket name"
  type        = string
}

variable "bucket_versioning" {
  default     = "Disabled"
  description = "Set if the bucket should be versioned. Do not disable versioning on already created bucket. https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning#versioning_configuration"
  type        = string
  validation {
    condition     = contains(["Suspended", "Enabled", "Disabled"], var.bucket_versioning)
    error_message = "The bucket_versioning must be either Suspended, Enabled or Disabled."
  }
}
