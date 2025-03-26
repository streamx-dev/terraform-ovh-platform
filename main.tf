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
  default_ovh_public_cloud_region                                = "GRA11"
  default_cluster_name                                           = "streamx"
  default_node_pool_name                                         = "streamx"
  default_node_pool_flavor_name                                  = "d2-8"
  default_node_pool_desired_nodes                                = 5
  default_node_pool_max_nodes                                    = 10
  default_node_pool_min_nodes                                    = 5
  default_node_pool_autoscale                                    = true
  default_node_pool_autoscaling_scale_down_unneeded_time_seconds = 1200

  ovh_public_cloud_region                                = var.force_defaults_for_null_variables && var.ovh_public_cloud_region == null ? local.default_ovh_public_cloud_region : var.ovh_public_cloud_region
  cluster_name                                           = var.force_defaults_for_null_variables && var.cluster_name == null ? local.default_cluster_name : var.cluster_name
  node_pool_name                                         = var.force_defaults_for_null_variables && var.node_pool_name == null ? local.default_node_pool_name : var.node_pool_name
  node_pool_flavor_name                                  = var.force_defaults_for_null_variables && var.node_pool_flavor_name == null ? local.default_node_pool_flavor_name : var.node_pool_flavor_name
  node_pool_desired_nodes                                = var.force_defaults_for_null_variables && var.node_pool_desired_nodes == null ? local.default_node_pool_desired_nodes : var.node_pool_desired_nodes
  node_pool_max_nodes                                    = var.force_defaults_for_null_variables && var.node_pool_max_nodes == null ? local.default_node_pool_max_nodes : var.node_pool_max_nodes
  node_pool_min_nodes                                    = var.force_defaults_for_null_variables && var.node_pool_min_nodes == null ? local.default_node_pool_min_nodes : var.node_pool_min_nodes
  node_pool_autoscale                                    = var.force_defaults_for_null_variables && var.node_pool_autoscale == null ? local.default_node_pool_autoscale : var.node_pool_autoscale
  node_pool_autoscaling_scale_down_unneeded_time_seconds = var.force_defaults_for_null_variables && var.node_pool_autoscaling_scale_down_unneeded_time_seconds == null ? local.default_node_pool_autoscaling_scale_down_unneeded_time_seconds : var.node_pool_autoscaling_scale_down_unneeded_time_seconds
}

module "cluster" {
  source = "./modules/cluster"

  ovh_public_cloud_project_id                            = var.ovh_public_cloud_project_id
  ovh_public_cloud_region                                = local.ovh_public_cloud_region
  cluster_name                                           = local.cluster_name
  node_pool_name                                         = local.node_pool_name
  node_pool_flavor_name                                  = local.node_pool_flavor_name
  node_pool_desired_nodes                                = local.node_pool_desired_nodes
  node_pool_max_nodes                                    = local.node_pool_max_nodes
  node_pool_min_nodes                                    = local.node_pool_min_nodes
  node_pool_autoscale                                    = local.node_pool_autoscale
  node_pool_autoscaling_scale_down_unneeded_time_seconds = local.node_pool_autoscaling_scale_down_unneeded_time_seconds
  kubeconfig_path                                        = var.kubeconfig_path
}
