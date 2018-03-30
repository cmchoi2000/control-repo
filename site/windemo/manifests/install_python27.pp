class windemo::install_python27 {
  file {'C:\Install\Python\python-2.7.10.amd64.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Python/python-2.7.10.amd64.msi',
  } ->
  package {'Python 2.7.10 (64-bit)':
  ensure => installed,
  source => 'C:\Install\Python\python-2.7.10.amd64.msi',
  install_options => ['/quiet', 'ALLUSERS=1'],
  }
}
