class windemo::install_vs2017_156 {
  file {'C:\Install\VS.NET2017_15.6':
  ensure => directory,
  source => 'puppet:///win_share/Software/Microsoft/VS.NET2017_15.6',
  recurse => 'remote'
  }
  } ->
  package {'Visual Studio Enterprise 2017':
  ensure => installed,
  source => 'C:\Install\VS.NET2017_15.6\vs_Enterprise.exe',
  install_options => ['--in', 'SFS_Dev_Response.json'],
  }
}
