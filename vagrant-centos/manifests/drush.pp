class drush {
  exec { "download_drush":
    cwd => "/tmp",
    command => "/usr/bin/wget http://ftp.drupal.org/files/projects/drush-7.x-4.4.tar.gz",
    creates => "/opt/drush",
    require => Package["wget"],
  }

  exec { "unpack_drush":
    cwd => "/tmp",
    command => "/bin/tar xvzf /tmp/drush-7.x-4.4.tar.gz",
    creates => "/opt/drush",
    require => Exec["download_drush"],
  }

  exec { "remove_tar":
    cwd => "/tmp",
    command => "/bin/rm /tmp/drush-7.x-4.4.tar.gz",
    creates => "/opt/drush",
    require => [ Exec["download_drush"], Exec["unpack_drush"] ],
  }

  exec { "install_drush":
    cwd => "/tmp",
    command => "/bin/mv drush/ /opt/",
    creates => "/opt/drush",
    require => [ Exec["download_drush"], Exec["unpack_drush"] ],
  }

  file { "/usr/local/bin/drush":
    ensure => link,
    target => "/opt/drush/drush",
  }
}
