
include_recipe 'rsyslog'
include_recipe 'rsyslog::server'

include_recipe 'logrotate::global'
include_recipe 'logwatch'
