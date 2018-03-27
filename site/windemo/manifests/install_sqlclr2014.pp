class windemo::install_sqlclr2014 {
  file {'C:\Install\SQLSysClrTypes.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/SQL2014/Management Objects Collection/SQLSysClrTypes.msi',
  } ->
  package {'Microsoft System CLR Types for SQL Server 2014':
  ensure => installed,
  source => 'C:\Install\SQLSysClrTypes.msi',
  install_options => ['/quiet'],
  }
}
