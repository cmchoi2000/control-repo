class windemo::installputty {
  file {'C:\Windows\Temp\putty-0.66-installer.exe':
  ensure => file,
  source => 'puppet:///win_share/Software/Putty/putty-0.66-installer.exe',

  }
  package {'PuTTY release 0.66':
  ensure => installed,
  source => 'C:\Windows\Temp\putty-0.66-installer.exe',
  install_options => ['/silent'],
  }
}