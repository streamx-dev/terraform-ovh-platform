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

output "floatingip" {
  description = "Allocated floating IP for future usage"
  value       = openstack_networking_floatingip_v2.floatingip.address
}

output "network_operator_username" {
  description = "Username of created network operator user"
  value       = ovh_cloud_project_user.network_operator_user.username
}

output "network_operator_password" {
  description = "Password of created network operator user"
  value       = ovh_cloud_project_user.network_operator_user.password
}

output "network_operator_tenant_id" {
  description = "Tenant id of created network operator user"
  value       = ovh_cloud_project_user.network_operator_user.openstack_rc.OS_TENANT_ID
}

output "network_operator_tenant_name" {
  description = "Tenant name of created network operator user"
  value       = ovh_cloud_project_user.network_operator_user.openstack_rc.OS_TENANT_NAME
}
