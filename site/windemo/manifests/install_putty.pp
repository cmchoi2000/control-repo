class windemo::install_putty {
	file {'C:\Install\Putty':
	ensure => directory,
	}
  file {'C:\Install\Putty\putty-0.66-installer.exe':
  ensure => file,
  source => 'puppet:///win_share/Software/Putty/putty-0.66-installer.exe',
  } ->
  package {'PuTTY release 0.66':
  ensure => installed,
#  source => 'puppet:///win_share/Software/Putty/putty-0.66-installer.exe',
  source => 'C:\Install\Putty\putty-0.66-installer.exe',
  install_options => ['/silent'],
  }
}
