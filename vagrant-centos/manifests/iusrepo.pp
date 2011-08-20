class iusrepo {
  yumrepo { "EPEL":
    /* @TODO: Make the 5 dynamic. */
    baseurl => "http://download.fedoraproject.org/pub/epel/5/\$basearch",
    descr => "EPEL Repo",
    enabled => 1,
    gpgcheck => 0,
  }

  yumrepo { "IUS":
    /* @TODO: Make the 5 dynamic. */
    baseurl => "http://dl.iuscommunity.org/pub/ius/stable/Redhat/5/$architecture",
    descr => "IUS Community repository",
    enabled => 1,
    gpgcheck => 0
  }
}
