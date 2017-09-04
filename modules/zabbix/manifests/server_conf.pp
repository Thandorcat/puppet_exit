class zabbix::server_conf {

  file_line { 'Set DBPassword in /etc/zabbix/zabbix_server.conf':
    path   => '/etc/zabbix/zabbix_server.conf',
    line   => 'DBPassword=password',
    match  => '^(# )*DBPassword=.*',
    notify => Service['zabbix-server'],
  }
  file_line { 'Set CacheSize in /etc/zabbix/zabbix_server.conf':
    path   => '/etc/zabbix/zabbix_server.conf',
    line   => 'CacheSize=32M',
    match  => '^(# )*CacheSize=.*',
    notify => Service['zabbix-server'],
  }
  file_line { 'Set StartPingers in /etc/zabbix/zabbix_server.conf':
    path   => '/etc/zabbix/zabbix_server.conf',
    line   => 'StartPingers=5',
    match  => '^(# )*StartPingers=.*',
    notify => Service['zabbix-server'],
  }

}
