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

  service_name    = var.service_name
  cluster_name    = var.cluster_name
  network_id      = var.public_ip_address == null || var.public_ip_address == "" ? null : var.network_id
  nodes_subnet_id = var.public_ip_address == null || var.public_ip_address == "" ? null : var.nodes_subnet_id
  region          = var.region
  kubeconfig_path = var.kubeconfig_path
}
