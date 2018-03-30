class windemo::install_smo2014 {
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
