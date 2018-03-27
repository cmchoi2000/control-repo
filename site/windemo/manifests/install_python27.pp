class windemo::install_python27 {
  file {'C:\Install\python-2.7.10.amd64.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Python/python-2.7.10.amd64.msi',
  } ->
#  file {'C:\Install\Cypthon':
#  ensure => directory,
#  source => 'puppet:///win_share/Software/Python/Cypthon',
#  recurse => 'remote'
#  }
  package {'Python 2.7.10 (64-bit)':
  ensure => installed,
  source => 'C:\Install\python-2.7.10.amd64.msi',
  install_options => ['/quiet', 'ALLUSERS=1'],
  }
#  exec { 'Install Cypthon':
#    command => 'cd C:\Install\Cypthon; C:\Install\Cypthon\install-cython.cmd',
#  }
}
