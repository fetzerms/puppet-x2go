# x2go::repo::debian
class x2go::repo::debian {
  case $x2go::version {
    'baikal': { $release_train = 'baikal'  }
    default:  { $release_train = 'main' }
  }

  # puppetlabs/apt
  # By default, Puppet runs apt-get update on the first Puppet run after you
  # include the apt class, and anytime notify => Exec['apt_update']
  apt::source { 'x2go':
    location => 'http://packages.x2go.org/debian',
    release  => $::lsbdistcodename,
    repos    => $release_train,
    allow_unsigned => true,
    notify   => Exec['apt_update'],
  }
}
