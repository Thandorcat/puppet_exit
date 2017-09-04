class apache {

 case $facts['osfamily'] {
  'RedHat': {
    $package = 'httpd'
    $conf_file = '/etc/httpd/conf.d/vhosts.conf'
    $ip_address = $facts['ipaddress_enp0s8']
  }
  'Debian': {
    $package = 'apache2'
    $conf_file = '/etc/apache2/sites-enabled/vhosts.conf'
    $ip_address = $facts['ipaddress_eth1']
  }
   default: { fail('Unsupported family type')}
        }

   package { $package:
     ensure => installed,
   }

   file { '/var/www/public/':
      ensure => directory,
   }


   file { '/var/www/public/index.html':
      ensure  => file,
      content => template('apache/index.html.erb'),
    }

   file { $conf_file:
     content => template('apache/vhosts.conf.erb'),
     notify  => Service[$package],
    }

    service { $package:
     ensure => running,
     enable => true,
    }
}
