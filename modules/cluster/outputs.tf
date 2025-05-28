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

output "kubeconfig_path" {
  description = "K8s cluster kubeconfig file path"
  value       = length(local_sensitive_file.kubeconfig) > 0 ? abspath(local_sensitive_file.kubeconfig[0].filename) : null
}

output "kubeconfig" {
  description = "K8s cluster kubeconfig"
  value       = ovh_cloud_project_kube.cluster.kubeconfig
  sensitive   = true
}

output "host" {
  description = "K8s cluster kubeconfig"
  value       = ovh_cloud_project_kube.cluster.kubeconfig_attributes[0].host
  sensitive   = true
}
output "client_certificate" {
  description = "K8s cluster kubeconfig"
  value       = base64decode(ovh_cloud_project_kube.cluster.kubeconfig_attributes[0].client_certificate)
  sensitive   = true
}
output "client_key" {
  description = "K8s cluster kubeconfig"
  value       = base64decode(ovh_cloud_project_kube.cluster.kubeconfig_attributes[0].client_key)
  sensitive   = true
}
output "cluster_ca_certificate" {
  description = "K8s cluster kubeconfig"
  value       = base64decode(ovh_cloud_project_kube.cluster.kubeconfig_attributes[0].cluster_ca_certificate)
  sensitive   = true
}
output "cluster_id" {
  description = "K8s cluster id"
  value       = ovh_cloud_project_kube.cluster.id
}
