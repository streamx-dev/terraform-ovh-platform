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
  default_floating_ip_pool = "Ext-Net"

  floating_ip_pool = var.force_defaults_for_null_variables && var.floating_ip_pool == null ? local.default_floating_ip_pool : var.floating_ip_pool
}

########################################################################################
#     User / Credential
########################################################################################
resource "ovh_cloud_project_user" "network_operator_user" {
  service_name = var.ovh_public_cloud_project_id
  description  = "User with role to operate on network(allocate floating IP)"
  role_name    = "network_operator"
}

########################################################################################
#     Allocate Floating IP
########################################################################################
resource "openstack_networking_floatingip_v2" "floatingip" {
  pool   = local.floating_ip_pool
  region = var.ovh_public_cloud_region
}
