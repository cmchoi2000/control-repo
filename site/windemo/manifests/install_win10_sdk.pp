class windemo::install_win10_sdk {
  file {'C:\Install\WindowsSDK  ':
  ensure => directory,
  source => 'puppet:///win_share/Software/Microsoft/WindowsKits/10/WindowsSDK',
  recurse => 'remote'
  }

  package {'Windows Software Development Kit - Windows 10.0.16299.91':
  ensure => installed,
  source => 'C:\Install\winsdksetup.exe',
  install_options => ['/features OptionId.WindowsDesktopDebuggers', '/q'],
  }
}
