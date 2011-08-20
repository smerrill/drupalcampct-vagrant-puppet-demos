class httpd {
  package { "httpd":
    name => "httpd",
    ensure => installed,
  }

  file { "/var/www/html/index.php":
    content => "<?php phpinfo(); ?>",
    require => Package['httpd'],
  }

  service { "httpd":
    name => "httpd",
    ensure => running,
  }
}
