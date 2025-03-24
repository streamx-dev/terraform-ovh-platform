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

resource "ovh_cloud_project_kube" "cluster" {
  service_name = var.ovh_public_cloud_project_id
  name         = var.cluster_name
  region       = var.ovh_public_cloud_region

  private_network_id = var.network_id
  nodes_subnet_id    = var.nodes_subnet_id
  dynamic "private_network_configuration" {
    for_each = var.network_id != null && var.network_id != "" ? [1] : []
    content {
      default_vrack_gateway              = ""
      private_network_routing_as_default = false
    }
  }
  timeouts {
    create = "1h"
    update = "30m"
    delete = "30m"
  }
}

resource "ovh_cloud_project_kube_nodepool" "node_pool" {
  service_name                                 = var.ovh_public_cloud_project_id
  kube_id                                      = ovh_cloud_project_kube.cluster.id
  name                                         = var.node_pool_name
  flavor_name                                  = var.node_pool_flavor_name
  desired_nodes                                = var.node_pool_desired_nodes
  max_nodes                                    = var.node_pool_max_nodes
  min_nodes                                    = var.node_pool_min_nodes
  autoscale                                    = var.node_pool_autoscale
  autoscaling_scale_down_unneeded_time_seconds = var.node_pool_autoscaling_scale_down_unneeded_time_seconds
}

resource "local_sensitive_file" "kubeconfig" {
  count    = var.kubeconfig_path == null ? 0 : 1
  filename = var.kubeconfig_path
  content  = ovh_cloud_project_kube.cluster.kubeconfig
}

