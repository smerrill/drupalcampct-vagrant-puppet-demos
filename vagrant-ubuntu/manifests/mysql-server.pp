class mysql-server {

  package { "mysql-server":
    name => "mysql-server",
    ensure => installed,
  }
}
