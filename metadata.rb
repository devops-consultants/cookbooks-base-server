name 'base_server'
maintainer 'Rob Coward'
maintainer_email 'rob.coward@devops-consultants.co.uk'
license 'Apache-2.0'
description 'Installs/Configures base_server'
long_description 'Installs/Configures base_server'
version '0.1.6'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
issues_url 'https://github.com/devops-consultants/cookbooks-base-server/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
source_url 'https://github.com/devops-consultants/cookbooks-base-server'

depends 'users'
depends 'os-hardening'
depends 'chef-client'
depends 'sudo'
depends 'openssh'
depends 'rsyslog'
depends 'logrotate'
depends 'postfix', '~> 5.1'
depends 'logwatch', '~> 2.1'
depends 'fail2ban', '~> 4.0'
