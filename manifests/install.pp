# cockpit::install - Used for managing packages for cockpit
#
class centos_errata::install {

  include ::epel

  Class['::epel']
  ->
  package { $::centos_errata::required_packages:
    ensure => installed,
  }
  ->
  package { $::centos_errata::required_pip_packages:
    ensure   => installed,
    provider => 'pip',
  }

  file { '/var/lib/centos-package-cron/':
    ensure => directory,
  }

}
