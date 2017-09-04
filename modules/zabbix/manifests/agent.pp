class zabbix::agent {

  package { 'zabbix-agent':
     ensure => installed,
  }

  case $is_zabbixserver {
    true: {
    $node_name  = 'Zabbix server'
    $server_ip  = '127.0.0.1'
    }
    default:             {
      $server_ip  = '192.168.56.102'
      $node_name  = $facts['fqdn']
    }
  }

  file_line { 'Set Server in /etc/zabbix/zabbix_agentd.conf':
    path   => '/etc/zabbix/zabbix_agentd.conf',
    line   => "Server=${server_ip}",
    match  => '^Server=.*',
    notify => Service['zabbix-agent'],
  }
  file_line { 'Set ServerActive in /etc/zabbix/zabbix_agentd.conf':
    path   => '/etc/zabbix/zabbix_agentd.conf',
    line   => "ServerActive=${server_ip}",
    match  => '^ServerActive=.*',
    notify => Service['zabbix-agent'],
  }
  file_line { 'Set Hostname in /etc/zabbix/zabbix_agentd.conf':
    path   => '/etc/zabbix/zabbix_agentd.conf',
    line   => "Hostname=${node_name}",
    match  => '^Hostname=.*',
    notify => Service['zabbix-agent'],
  }

  service { 'zabbix-agent':
    ensure => 'running',
    enable => true,
  }

}