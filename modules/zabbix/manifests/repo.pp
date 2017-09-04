class zabbix::repo {
  package { 'zabbix-release-3.4-1.el7.centos.noarch':
    ensure   => installed,
    provider => 'rpm',
    source   => 'http://repo.zabbix.com/zabbix/3.4/rhel/7/x86_64/zabbix-release-3.4-1.el7.centos.noarch.rpm',
  }
}
