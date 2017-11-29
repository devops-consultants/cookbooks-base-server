include_recipe 'os-hardening'

# cis-dil-benchmark-6.1.9: Ensure permissions on /etc/gshadow- are configured
file '/etc/gshadow-' do
  mode '600'
  owner 'root'
  group 'root'
end

# linux-baseline os-02: Check owner and permissions for /etc/shadow
file '/etc/shadow' do
  mode '000'
end