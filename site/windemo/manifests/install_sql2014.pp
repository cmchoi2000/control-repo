class windemo::install_sql2014 {
	file {'C:\Install\SQL2014':
	  ensure => directory,
	} ->
  file {'C:\Install\SQL2014\SQLSysClrTypes.msi':
    ensure => file,
    source => 'puppet:///win_share/Software/Microsoft/SQL2014/Management Objects Collection/SQLSysClrTypes.msi',
  } ->
  package {'Microsoft System CLR Types for SQL Server 2014':
    ensure => installed,
    source => 'C:\Install\SQL2014\SQLSysClrTypes.msi',
    install_options => ['/quiet'],
  } ->
  file {'C:\Install\SQL2014\SharedManagementObjects.msi':
    ensure => file,
    source => 'puppet:///win_share/Software/Microsoft/SQL2014/Management Objects Collection/SharedManagementObjects.msi',
  } ->
  package {'Microsoft SQL Server 2014 Management Objects  (x64)':
    ensure => installed,
    source => 'C:\Install\SQL2014\SharedManagementObjects.msi',
    install_options => ['/quiet'],
  }
}
