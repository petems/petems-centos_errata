# Class: centos_errata::params
class centos_errata::params {

  case $::operatingsystem {
    'CentOS': {
      $required_yum_packages = [
        'yum-plugin-security',
        'python-pip',
        'yum-plugin-changelog',
      ],
      $required_pip_packages = [
        'argparse',
        'sqlalchemy',
      ]
    }
    default: {
      fail("This module is only useful on CentOS, your OS was ${$::operatingsystem}")
    }
  }

}
