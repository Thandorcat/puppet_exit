class zabbix::server_install {

  package { 'mysql':
     ensure => installed,
   }
  package { 'mariadb-server':
     ensure => installed,
   }
  package { 'httpd':
     ensure => installed,
   }
  package { 'php':
     ensure => installed,
   }
  package { 'zabbix-server':
     ensure => installed,
   }
  package { 'zabbix-web-mysql':
     ensure => installed,
   }

}
