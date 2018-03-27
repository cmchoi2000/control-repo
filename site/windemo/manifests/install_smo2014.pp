class windemo::install_smo2014 {
  file {'C:\Install\SharedManagementObjects.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/SQL2014/Management Objects Collection/SharedManagementObjects.msi',
  } ->
  package {'Microsoft SQL Server 2014 Management Objects  (x64)':
  ensure => installed,
  source => 'C:\Install\SharedManagementObjects.msi',
  install_options => ['/quiet'],
  }
}
