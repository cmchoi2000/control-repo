class windemo::install_win_debug {
	file {'C:\Install\WindowsDebugging':
	ensure => directory,
	}
  file {'C:\Install\WindowsDebugging\dbg_amd64_6.11.1.404.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/Windows Debugging/6.11.1.404/dbg_amd64_6.11.1.404.msi',
  } ->
  package {'Debugging Tools for Windows (x64)':
  ensure => installed,
  source => 'C:\Install\WindowsDebugging\dbg_amd64_6.11.1.404.msi',
  install_options => ['/quiet'],
  }

}
