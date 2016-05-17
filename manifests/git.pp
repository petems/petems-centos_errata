# centos_errata::git
class centos_errata::git {

  include ::git

  vcsrepo { '/opt/centos-package-cron':
    ensure   => present,
    provider => git,
    source   => 'https://github.com/wied03/centos-package-cron',
    revision => '03380df0e492982f010dcfc1b4b51d4e01a57b99',
    require  => Class['::git'],
  }

}
