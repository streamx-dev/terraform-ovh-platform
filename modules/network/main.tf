########################################################################################
#     User / Credential
########################################################################################
resource "ovh_cloud_project_user" "network_operator_user" {
  service_name = var.ovh_public_cloud_project_id
  description  = "User with role to operate on network(allocate floating IP)"
  role_name    = "network_operator"
}

########################################################################################
#     Network
########################################################################################
resource "ovh_cloud_project_network_private" "network" {
  service_name = var.ovh_public_cloud_project_id
  vlan_id      = var.vlan_id
  name         = var.network_name
  regions      = [var.ovh_public_cloud_region]
}

resource "ovh_cloud_project_network_private_subnet" "subnet" {
  service_name = var.ovh_public_cloud_project_id
  network_id   = ovh_cloud_project_network_private.network.id

  region  = var.ovh_public_cloud_region
  start   = var.subnet_start
  end     = var.subnet_end
  network = var.subnet_network
  dhcp    = true
}

resource "ovh_cloud_project_gateway" "gateway" {
  service_name = var.ovh_public_cloud_project_id
  name         = var.gateway_name
  model        = var.gateway_model
  region       = var.ovh_public_cloud_region
  network_id   = tolist(ovh_cloud_project_network_private.network.regions_attributes[*].openstackid)[0]
  subnet_id    = ovh_cloud_project_network_private_subnet.subnet.id
}

########################################################################################
#     Allocate Floating IP
########################################################################################
resource "openstack_networking_floatingip_v2" "floatingip" {
  pool = var.floating_ip_pool
  region = var.ovh_public_cloud_region
}
