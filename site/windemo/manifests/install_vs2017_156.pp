class windemo::install_vs2017_156 {
  file {'C:\Install\WindowsSDK':
  ensure => directory,
  source => 'puppet:///win_share/Software/Microsoft/VS.NET2017_15.6',
  recurse => 'remote'
  } ->
  package {'Windows Software Development Kit - Windows 10.0.16299.91':
  ensure => installed,
  source => 'C:\Install\VS.NET2017_15.6\vs_Enterprise.exe',
  install_options => ['--in', 'SFS_Dev_Response.json'],
  }
}
