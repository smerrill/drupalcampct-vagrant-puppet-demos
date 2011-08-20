class php {
  package { "php5":
    ensure => installed,
  }
  
  file { "/var/www/index.php":
    content => "<?php phpinfo(); ?>"
  }
}
