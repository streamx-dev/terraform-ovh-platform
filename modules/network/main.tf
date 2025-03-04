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

########################################################################################
#     User / Credential
########################################################################################
resource "ovh_cloud_project_user" "network_operator_user" {
  service_name = var.service_name
  role_name    = "network_operator"
}

########################################################################################
#     Network
########################################################################################
resource "ovh_cloud_project_network_private" "network" {
  service_name = var.service_name
  vlan_id = var.vlan_id
  name    = var.network_name
  regions = [var.cloud_region]
}

resource "ovh_cloud_project_network_private_subnet" "subnet" {
  service_name = var.service_name
  network_id   = ovh_cloud_project_network_private.network.id

  region     = var.cloud_region
  start      = var.subnet_start
  end        = var.subnet_end
  network    = var.subnet_network
  dhcp       = true
}

resource "ovh_cloud_project_gateway" "gateway" {
  service_name = var.service_name
  name         = var.gateway_name
  model        = var.gateway_model
  region       = var.cloud_region
  network_id   = tolist(ovh_cloud_project_network_private.network.regions_attributes[*].openstackid)[0]
  subnet_id    = ovh_cloud_project_network_private_subnet.subnet.id
}

########################################################################################
#     Allocate Floating IP
########################################################################################
resource "openstack_networking_floatingip_v2" "floatingip" {
  pool = var.floating_ip_pool
}
