# Inspec test for recipe base_server::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe user('rob') do
  it { should exist }
  its('groups') { should include('sysadmin') }
end

%w[tmux2u htop iftop atop].each do |pkg|
  describe package(pkg) do
    it { should be_installed }
  end
end

include_controls 'ssh-hardening' do
  skip_control 'ssh-10'
  skip_control 'sshd-03'
  skip_control 'sshd-38'
  skip_control 'sshd-39'
  skip_control 'sshd-42'
  skip_control 'sshd-48'
end

include_controls 'DevSec Linux Baseline' do
  skip_control 'os-05'
  skip_control 'os-05b'
  skip_control 'os-06'
  skip_control 'os-10'  # Waiting for os-hardening > 2.1.1 with https://github.com/dev-sec/chef-os-hardening/pull/169
  skip_control 'package-08'
  skip_control 'sysctl-07'
  skip_control 'sysctl-10'
  skip_control 'sysctl-14'
end

# include_controls 'CIS Distribution Independent Linux Benchmark'
