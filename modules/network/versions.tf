terraform {
  required_version = ">= 1.0.0"
  required_providers {
    ovh = {
      source  = "ovh/ovh"
      version = "~> 2.0.0"
    }
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.43.0"
    }
  }
}
