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

provider "ovh" {

}

provider "openstack" {
  auth_url    = "https://auth.cloud.ovh.net"
  domain_name = "default"
  user_name   = module.network.network_operator_username
  password    = module.network.network_operator_password
  tenant_id   = module.network.network_operator_tenant_id
  tenant_name = module.network.network_operator_tenant_name
}
