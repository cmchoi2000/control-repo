class windemo::install_sqlclr2014 {
	file {'C:\Install\SQL2014':
	ensure => directory,
	}
  file {'C:\Install\SQL2014\SQLSysClrTypes.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/SQL2014/Management Objects Collection/SQLSysClrTypes.msi',
  } ->
  package {'Microsoft System CLR Types for SQL Server 2014':
  ensure => installed,
  source => 'C:\Install\SQL2014\SQLSysClrTypes.msi',
  install_options => ['/quiet'],
  }
}
