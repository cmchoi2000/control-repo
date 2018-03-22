class windemo::install_smo2014 {
  file {'C:\Install\SharedManagementObjects.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/SQL2014/Management Objects Collection/SharedManagementObjects.msi',
  } ->
  package {'Microsoft SharedManagementObjects':
  ensure => installed,
  source => 'C:\Install\SharedManagementObjects.msi',
  install_options => ['/quiet'],
  }
}
