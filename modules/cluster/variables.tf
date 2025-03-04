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

variable "service_name" {
  description = "The id of the public OVH cloud project"
  type        = string
}

variable "cluster_name" {
  default     = "streamx"
  description = "The name of the kubernetes cluster."
  type        = string
}

variable "region" {
  default     = "WAW1"
  description = "A valid OVHcloud public cloud region ID in which the kubernetes cluster will be available."
  type        = string
}

variable "network_id" {
  default = null
  description = "Network id to attach cluster"
  type        = string
}

variable "nodes_subnet_id" {
  default = null
  description = "Nodes subnet ID"
  type        = string
}
