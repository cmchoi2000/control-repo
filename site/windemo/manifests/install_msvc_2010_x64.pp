class windemo::install_msvc_2010_x64 {
  file {'C:\Install\vcredist_x64.exe':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/VS.NET2010/Redist/vcredist_x64.exe',
  } ->
  package {'Microsoft Visual C++ 2010  x64 Redistributable - 10.0.40219':
  ensure => installed,
  source => 'C:\Install\vcredist_x64.exe',
  install_options => ['/q'],
  }
}
