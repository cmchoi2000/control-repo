class windemo::create_folders {
	file {'C:\Install':
	ensure => directory,
	}
	file {'C:\Jenkins':
	ensure => directory,
	}
	file {'C:\Temp':
	ensure => directory,
	}
  file {'C:\Install\Desktop':
  ensure => directory,
  source => 'puppet:///win_share/Software/Desktop',
  recurse => 'remote'
	}
  file {'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\SetDesktop.bat':
  ensure => file,
  source => 'puppet:///win_share/Software/Desktop/SetDesktop.bat',
  }
}
