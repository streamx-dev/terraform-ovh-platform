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
  description = "The id of the public OVH cloud project"
  type        = string
}

variable "ovh_public_cloud_region" {
  default     = "GRA11"
  description = "Region of cloud deployment"
  type        = string
}

variable "cluster_name" {
  default     = "streamx"
  description = "The name of the kubernetes cluster."
  type        = string
}

########################################################################################
#     Network
########################################################################################

variable "network_id" {
  default     = null
  description = "Network id to attach cluster"
  type        = string
}

variable "nodes_subnet_id" {
  default     = null
  description = "Nodes subnet ID"
  type        = string
}

########################################################################################
#     Node Pool
########################################################################################

variable "node_pool_name" {
  default     = "streamx"
  description = "The name of the node_pool. Warning: _ char is not allowed! Changing this value recreates the resource."
  type        = string
}
variable "node_pool_flavor_name" {
  default     = "d2-8"
  description = "A valid OVHcloud public cloud flavor ID in which the nodes will be started. Ex: b2-7. You can find the list of flavor IDs: https://www.ovhcloud.com/fr/public-cloud/prices/."
  type        = string
}
variable "node_pool_desired_nodes" {
  default     = 5
  description = "Number of nodes to start."
  type        = number
}

variable "node_pool_max_nodes" {
  default     = 10
  description = "Maximum number of nodes allowed in the pool. Setting desired_nodes over this value will raise an error."
  type        = number
}

variable "node_pool_min_nodes" {
  default     = 5
  description = "Minimum number of nodes allowed in the pool. Setting desired_nodes under this value will raise an error."
  type        = number
}

variable "node_pool_autoscale" {
  default     = true
  description = "Enable auto-scaling for the pool."
  type        = bool
}

variable "node_pool_autoscaling_scale_down_unneeded_time_seconds" {
  default     = 1200
  description = "ScaleDownUnneededTimeSeconds autoscaling parameter How long a node should be unneeded before it is eligible for scale down"
  type        = number
}

########################################################################################
#     Kubeconfig
########################################################################################

variable "kubeconfig_path" {
  default     = null
  description = "Script creates kubeconfig file with provided path. No file is created when null is provided."
}
