output "floatingip" {
  description = "Allocated floating IP for future usage"
  value       = openstack_networking_floatingip_v2.floatingip.address
}

output "nodes_subnet_id" {
  description = "Nodes subnet ID"
  value       = ovh_cloud_project_network_private_subnet.subnet.id
}

output "network_id" {
  description = "Network id to attach cluster"
  value       = tolist(ovh_cloud_project_network_private.network.regions_attributes[*].openstackid)[0]
}

output "openstack_user_username" {
  value = ovh_cloud_project_user.network_operator_user.username
}

output "openstack_user_password" {
  value     = ovh_cloud_project_user.network_operator_user.password
  sensitive = true
}

output "openstack_tenant_id" {
  value = ovh_cloud_project_user.network_operator_user.openstack_rc.OS_TENANT_ID
}

output "openstack_tenant_name" {
  value = ovh_cloud_project_user.network_operator_user.openstack_rc.OS_TENANT_NAME
}
