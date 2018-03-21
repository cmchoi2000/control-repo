class windemo::install_msvc_2010_x86 {
  file {'C:\Install\vcredist_x86.exe':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/VS.NET2010/Redist/vcredist_x86.exe',

  }
  package {'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219':
  ensure => installed,
  source => 'C:\Install\vcredist_x86.exe',
  install_options => ['/q'],
  }
}
