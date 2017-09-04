class profile::zabbix::server {

  include zabbix::repo
  include zabbix::agent
  include zabbix::server_install
  include zabbix::db_conf
  include zabbix::server_conf
  include zabbix::server_php_conf
  include zabbix::server_start

}
