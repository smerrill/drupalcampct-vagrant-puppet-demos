class php53 {
  package { [ "php53u-cli", "php53u-mcrypt", "php53u-mbstring", "php53u-devel", "php53u", "php53u-gd", "php53u-mysql", "php53u-soap", "php53u-xml" ]:
    ensure => installed,
    require => Yumrepo["IUS"],
  }

  package { "php-pear":
    ensure => installed,
    require => Package["php53u-cli"],
  }

  exec { "console_table":
    creates => "/usr/share/pear/Console/Table.php",
    command => "/usr/bin/pear install Console_Table",
    require => Package["php-pear"],
  }

}
