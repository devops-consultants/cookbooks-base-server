#
# Cookbook:: base_server
# Recipe:: default
#
# Copyright:: 2017, Rob Coward
#
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

yum_repository 'ius' do
    description "IUS Community Packages for Enterprise Linux 7 - $basearch"
    baseurl "https://dl.iuscommunity.org/pub/ius/stable/CentOS/7/$basearch"
    gpgkey 'https://dl.iuscommunity.org/pub/ius/IUS-COMMUNITY-GPG-KEY'
    action :create
end

include_recipe 'base_server::users'
include_recipe 'base_server::logging'
include_recipe 'base_server::hardening'

package 'epel-release'
%w[procps tmux2u htop iftop atop].each do |pkg|
    package pkg
end

include_recipe 'sudo'
include_recipe 'openssh'
include_recipe 'postfix'