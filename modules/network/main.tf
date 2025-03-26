locals {
  default_floating_ip_pool = "Ext-Net"

  floating_ip_pool = var.force_defaults_for_null_variables && var.floating_ip_pool == null ? local.default_floating_ip_pool : var.floating_ip_pool
}

########################################################################################
#     User / Credential
########################################################################################
resource "ovh_cloud_project_user" "network_operator_user" {
  service_name = var.ovh_public_cloud_project_id
  description  = "User with role to operate on network(allocate floating IP)"
  role_name    = "network_operator"
}

########################################################################################
#     Allocate Floating IP
########################################################################################
resource "openstack_networking_floatingip_v2" "floatingip" {
  pool   = local.floating_ip_pool
  region = var.ovh_public_cloud_region
}
