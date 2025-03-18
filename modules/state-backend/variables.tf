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

variable "ovh_public_cloud_project_id" {
  description = "OVH Public cloud project id"
  type = string
}

variable "region" {
  default = "GRA"
  description = "S3 bucket location from [list](https://help.ovhcloud.com/csm/en-ie-public-cloud-storage-s3-location?id=kb_article_view&sysparm_article=KB0047393)"
  type = string
}

variable "bucket_name" {
  description = "S3 bucket name"
  type = string
}

variable "tf_backends" {
  description = "Terraform backends defined as map where key is state backend key and value is a path where backend configuration is created."
  type        = map(string)
}
