class zabbix::server_start {

  service { 'zabbix-server':
    ensure => 'running',
    enable => true,
  }
  service { 'httpd':
    ensure => 'running',
    enable => true,
  }
  service { 'mariadb':
    ensure => 'running',
    enable => true,
  }

}
