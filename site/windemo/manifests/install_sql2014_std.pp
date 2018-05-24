class windemo::install_sql2014_std {
	file {'C:\Install\SQL2014_std':
	  ensure => directory,
	} ->
  file {'C:\Install\SQL2014_std\SQLServer2014_v1.iso':
    ensure => file,
    source => 'puppet:///win_share/Builds/NGS/8.00/SQL2014/SQLServer2014_v1.iso',
  }
}
