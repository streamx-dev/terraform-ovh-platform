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
  description = "The id of the public OVH cloud project"
  type        = string
}

variable "ovh_public_cloud_region" {
  description = "A valid OVHcloud public cloud region ID in which the kubernetes resources will be available."
  type        = string
}

variable "floating_ip_pool" {
  default     = "Ext-Net"
  description = "Pool of IPs"
  type        = string
}
