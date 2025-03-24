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

module "cluster" {
  source = "./modules/cluster"

  ovh_public_cloud_project_id                            = var.ovh_public_cloud_project_id
  ovh_public_cloud_region                                = var.ovh_public_cloud_region
  cluster_name                                           = var.cluster_name
  node_pool_name                                         = var.node_pool_name
  node_pool_flavor_name                                  = var.node_pool_flavor_name
  node_pool_desired_nodes                                = var.node_pool_desired_nodes
  node_pool_max_nodes                                    = var.node_pool_max_nodes
  node_pool_min_nodes                                    = var.node_pool_min_nodes
  node_pool_autoscale                                    = var.node_pool_autoscale
  node_pool_autoscaling_scale_down_unneeded_time_seconds = var.node_pool_autoscaling_scale_down_unneeded_time_seconds
  network_id                                             = var.public_static_ip_address == null || var.public_static_ip_address == "" ? null : var.network_id
  nodes_subnet_id                                        = var.public_static_ip_address == null || var.public_static_ip_address == "" ? null : var.nodes_subnet_id
  kubeconfig_path                                        = var.kubeconfig_path
}
