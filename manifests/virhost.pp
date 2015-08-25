define lam::virhost (
  $port='9090',
  $docroot='/var/www/html',
  $htmlname='index.html',
 ) {

file { "$docroot":
  ensure => directory,
}  

file { "${docroot}/index.html":
  ensure => present,
  source => "puppet:///modules/lam/${htmlname}",
}  

::apache::vhost { "$name":
  port    => "$port",
  docroot => "$docroot",
}

}
