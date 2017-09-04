class zabbix::server_php_conf {

  file_line { 'Set max_execution_time in /etc/php.ini':
    path   => '/etc/php.ini',
    line   => 'max_execution_time=600',
    match  => '^max_execution_time.*',
    notify => Service['httpd'],
  }
  file_line { 'Set max_input_time in /etc/php.ini':
    path   => '/etc/php.ini',
    line   => 'max_input_time=600',
    match  => '^max_input_time.*',
    notify => Service['httpd'],
  }
  file_line { 'Set memory_limit in /etc/php.ini':
    path   => '/etc/php.ini',
    line   => 'memory_limit=256M',
    match  => '^memory_limit.*',
    notify => Service['httpd'],
  }
  file_line { 'Set post_max_size in /etc/php.ini':
    path   => '/etc/php.ini',
    line   => 'post_max_size=32M',
    match  => '^post_max_size.*',
    notify => Service['httpd'],
  }
  file_line { 'Set date.timezone in /etc/php.ini':
    path   => '/etc/php.ini',
    line   => 'date.timezone=\'Europe/Minsk\'',
    match  => '^(\;)*date.timezone.*',
    notify => Service['httpd'],
  }

}