define lam::mysqldb ( 
  $dbuser = 'xoriant',
  $dbpwd  =  'xoriant123#'
  ) {
  
mysql::db { "$title":
  user     => "$dbuser",
  password => "$dbpwd",
  host     => 'localhost',
  grant    => ['SELECT', 'UPDATE'],
}
}
