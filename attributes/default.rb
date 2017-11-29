default['authorization']['sudo']['groups'] = %w[admin wheel sysadmin]
default['authorization']['sudo']['include_sudoers_d'] = true
default['authorization']['sudo']['sudoers_defaults'] = [
  '!visiblepw',
  'env_reset',
  'env_keep =  "COLORS DISPLAY HOSTNAME HISTSIZE INPUTRC KDEDIR LS_COLORS"',
  'env_keep += "MAIL PS1 PS2 QTDIR USERNAME LANG LC_ADDRESS LC_CTYPE"',
  'env_keep += "LC_COLLATE LC_IDENTIFICATION LC_MEASUREMENT LC_MESSAGES"',
  'env_keep += "LC_MONETARY LC_NAME LC_NUMERIC LC_PAPER LC_TELEPHONE"',
  'env_keep += "LC_TIME LC_ALL LANGUAGE LINGUAS _XKB_CHARSET XAUTHORITY"',
  'env_keep += "HOME"',
  'always_set_home',
  'secure_path = /sbin:/bin:/usr/sbin:/usr/bin',
]

default['logrotate']['global'] = {
  'daily' => true,
  'rotate' => 28,
  'create' => '',
  'dateext' => '',
  'compress' => '',

  '/var/log/wtmp' => {
    'missingok' => true,
    'monthly' => true,
    'create' => '0664 root utmp',
    'rotate' => 1,
    'minsize' => '1M',
  },

  '/var/log/btmp' => {
    'missingok' => true,
    'monthly' => true,
    'create' => '0660 root utmp',
    'rotate' => 1,
  }
}

default['postfix']['mail_type'] = 'client'
default['postfix']['main']['myhostname'] = 'devops-consultants.com'
default['postfix']['main']['mydomain'] = 'devops-consultants.com'
default['postfix']['main']['myorigin'] = 'devops-consultants.com'
default['postfix']['main']['append_dot_mydomain'] = 'yes'
default['postfix']['main']['append_at_myorigin'] = 'yes'
default['postfix']['smtp_generic_map_entries']['@localdomain'] = '@devops-consultants.com'

default['logwatch']['email'] = 'rob.coward@devops-consultants.co.uk'
default['logwatch']['detail'] = 'Low'

default['fail2ban']['email'] = 'rob.coward@devops-consultants.co.uk'
default['fail2ban']['services'] = {
  'ssh' => {
    'enabled' => 'true',
    'port' => 'ssh',
    'filter' => 'sshd',
    'logpath' => node['fail2ban']['auth_log'],
    'maxretry' => '3',
  }
}
