class windemo::installpython {
  file {'C:\Windows\Temp\python-2.7.10.amd64.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Python/python-2.7.10.amd64.msi',

  }
  package {'EA emake':
  ensure => installed,
  source => 'C:\Windows\Temp\python-2.7.10.amd64.msi',
  install_options => ['/quiet'],
  }
}
