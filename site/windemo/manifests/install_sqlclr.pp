class windemo::install_sqlclr {
  file {'C:\Install\SQLSysClrTypes.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/SQL2014/Management Objects Collection/SQLSysClrTypes.msi',

  }
  package {'Microsoft SQLSysClrTypes':
  ensure => installed,
  source => 'C:\Install\SQLSysClrTypes.msi',
  install_options => ['/quiet'],
  }
}
