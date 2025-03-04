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

variable "cloud_region" {
  default     = "WAW1"
  description = "A valid OVHcloud public cloud region ID in which the kubernetes resources will be available."
  type        = string
}

variable "network_name" {
  default     = "streamx-network"
  description = "name of network"
  type        = string
}

variable "vlan_id" {
  default     = 1
  description = "Id of vlan"
  type        = number
}

variable "subnet_start" {
  default     = "192.168.168.10"
  description = "First ip for this region"
  type        = string
}

variable "subnet_end" {
  default     = "192.168.168.254"
  description = "Last ip for this region"
  type        = string
}

variable "subnet_network" {
  default     = "192.168.168.0/24"
  description = "Global network in CIDR format"
  type        = string
}

variable "gateway_name" {
  default     = "streamx-gateway"
  description = "name of gateway"
  type        = string
}

variable "gateway_model" {
  default     = "s"
  description = "gateway model"
  type        = string
}

variable "floating_ip_pool" {
  default     = "Ext-Net"
  description = "pool if IPs"
  type        = string
}

