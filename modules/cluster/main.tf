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
  service_name = var.service_name
  name         = var.cluster_name
  region       = var.region

  private_network_id = var.network_id
  nodes_subnet_id = var.nodes_subnet_id
  private_network_configuration {
    default_vrack_gateway              = ""
    private_network_routing_as_default = false
  }
  timeouts {
    create = "1h"
    update = "30m"
    delete = "30m"
  }
}

resource "ovh_cloud_project_kube_nodepool" "node_pool" {
  service_name                                 = var.service_name
  kube_id                                      = ovh_cloud_project_kube.cluster.id
  name                                         = "streamx"
  flavor_name                                  = "d2-8"
  desired_nodes                                = 5
  max_nodes                                    = 10
  min_nodes                                    = 5
  autoscale                                    = true
  autoscaling_scale_down_unneeded_time_seconds = 1200
}

resource "local_sensitive_file" "kubeconfig" {
  filename = "${path.module}/env/kubeconfig"
  content  = ovh_cloud_project_kube.cluster.kubeconfig
}

