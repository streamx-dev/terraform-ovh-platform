output "floatingip" {
  description = "Allocated floating IP for future usage"
  value       = openstack_networking_floatingip_v2.floatingip.address
}
