class mymysql {
  mysql::db { 'test_mdb':
    user     => 'test_user',
    password => 'password',
    dbname   => 'test_mdb',
    grant    => ['SELECT', 'UPDATE'],
  }
}
