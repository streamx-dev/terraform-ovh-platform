# Copyright 2025 Dynamic Solutions Sp. z o.o. sp.k.

variable "ovh_public_cloud_project_id" {
  description = "The id of the public OVH cloud project"
  type        = string
}

variable "ovh_public_cloud_region" {
  default     = "GRA11"
  description = "A valid OVHcloud public cloud region ID in which the kubernetes resources will be available."
  type        = string
}

variable "network_name" {
  default     = "streamx-network"
  description = "Name of network"
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
  description = "Name of gateway"
  type        = string
}

variable "gateway_model" {
  default     = "s"
  description = "Gateway model"
  type        = string
}

variable "floating_ip_pool" {
  default     = "Ext-Net"
  description = "Pool of IPs"
  type        = string
}

