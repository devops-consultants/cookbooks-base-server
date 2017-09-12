name 'build_cookbook'
maintainer 'Rob Coward'
maintainer_email 'rob.coward@devops-consultants.co.uk'
license 'apachev2'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'delivery-truck'
