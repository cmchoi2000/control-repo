class windemo::install_odac {
  file {'C:\Install\ODAC112021Xcopy_x64':
  ensure => directory,
  source => 'puppet:///win_share/Software/Oracle/10/ODAC112021Xcopy_x64',
  recurse => 'remote'
  }
#  package {'Windows Software Development Kit - Windows 10.0.16299.91':
#  ensure => installed,
#  source => 'C:\Install\ODAC112021Xcopy_x64\winsdksetup.exe',
#  install_options => ['/features', 'OptionId.WindowsDesktopDebuggers', '/q'],
#  }
}
