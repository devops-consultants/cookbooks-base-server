# # encoding: utf-8

# Inspec test for recipe base_server::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

describe user('rob') do
  it { should exist }
  its('groups') { should include('sysadmin') }
end

include_controls 'ssh-hardening' do
  skip_control 'sshd-38'
  skip_control 'sshd-39'
  skip_control 'sshd-42'
  skip_control 'sshd-48'
end
# include_controls 'CIS Distribution Independent Linux Benchmark'
# include_controls 'DevSec Linux Baseline'