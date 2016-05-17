# centos_errata::git
class centos_errata::cron {

  cron { 'centos-package-cron':
    command  => '/usr/bin/centos-package-cron --skipold=false',
    user     => 'root',
    month    => '*',
    monthday => '*',
    hour     => '1',
    minute   => '0',
  }

}
