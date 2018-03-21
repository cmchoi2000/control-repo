class windemo::install_bc4 {
	file {'C:\Install\BC4':
	ensure => directory,
	}

  file {'C:\Install\BC4\BCompare-4.2.4.22795.exe':
  ensure => file,
  source => 'puppet:///win_share/Software/BeyondCompare/BC4/BCompare-4.2.4.22795.exe',
  }
  file {'C:\Install\BC4\BC4Key.txt':
  ensure => file,
  source => 'puppet:///win_share/Software/BeyondCompare/BC4/BC4Key.txt',
  }

  package {'Beyond Compare 4.2.4':
  ensure => installed,
  source => 'C:\Install\BC4\BCompare-4.2.4.22795.exe',
  install_options => ['/VERYSILENT'],
  }
}
