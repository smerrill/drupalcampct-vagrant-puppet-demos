class noselinux {
  exec { "noselinux_temporary":
    onlyif => "/usr/bin/test `/usr/sbin/getenforce` = 'Enforcing'",
    command => "/usr/sbin/setenforce 0",
    require => Exec["noselinux_permanent"],
  }

  exec { "noselinux_permanent":
    onlyif => "/usr/bin/test `/usr/sbin/getenforce` = 'Enforcing'",
    command => "/bin/cat /etc/selinux/config | /bin/sed -e 's/=enforcing/=permissive/' > /etc/selinux/config"
  }
}
