class windemo::install_smo {
  file {'C:\Windows\Temp\SharedManagementObjects.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/SQL2014/Management Objects Collection/SharedManagementObjects.msi',

  }
  package {'Microsoft SharedManagementObjects':
  ensure => installed,
  source => 'C:\Windows\Temp\SharedManagementObjects.msi',
  install_options => ['/quiet'],
  }
}