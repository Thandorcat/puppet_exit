class zabbix::db_conf {

  mysql::db { 'mydb':
  user           => 'zabbix',
  password       => 'password',
  host           => 'localhost',
  grant          => 'ALL',
  dbname         => 'zabbix',
  sql            => '/usr/share/doc/zabbix-server-mysql-3.4.1/create.sql.gz',
  import_cat_cmd => 'zcat',
  import_timeout => 900,
  }

}
