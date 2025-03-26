# Copyright 2025 Dynamic Solutions Sp. z o.o. sp.k.

variable "force_defaults_for_null_variables" {
  default     = true
  description = "Enables forcing default variable values when the variable value passed to the module is null."
  type        = bool
}

variable "ovh_public_cloud_project_id" {
  description = "The id of the public OVH cloud project"
  type        = string
}

variable "ovh_public_cloud_region" {
  description = "A valid OVHcloud public cloud region ID in which the kubernetes resources will be available."
  type        = string
}

variable "floating_ip_pool" {
  default     = "Ext-Net"
  description = "Pool of IPs"
  type        = string
}

