class windemo::install_msvc_2010_x86 {
  file {'C:\Windows\Temp\vcredist_x86.exe':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/DVS.NET2010/Redist/vcredist_x86.exe',

  }
  package {'Microsoft Visual C++ 2010  x86 Redistributable - 10.0.40219':
  ensure => installed,
  source => 'C:\Windows\Temp\vcredist_x86.exe',
  install_options => ['/q'],
  }
}
