class windemo::install_sqlclr {
  file {'C:\Windows\Temp\SQLSysClrTypes.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/SQL2014/Management Objects Collection/SQLSysClrTypes.msi',

  }
  package {'Microsoft SQLSysClrTypes':
  ensure => installed,
  source => 'C:\Windows\Temp\SQLSysClrTypes.msi',
  install_options => ['/quiet'],
  }
}
