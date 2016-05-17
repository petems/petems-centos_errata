# Class: centos_errata
class centos_errata (
  $required_yum_packages = $::centos_errata::params::required_yum_packages,
  $required_pip_packages = $::centos_errata::params::required_pip_packages,
) inherits ::centos_errata::params {



}
