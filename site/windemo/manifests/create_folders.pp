class windemo::create_folders {
	file {'C:\Install':
	ensure => directory,
	}
	file {'C:\Jenkins':
	ensure => directory,
	}
	file {'C:\BuildScripts_RTC':
	ensure => directory,
	}
  file {'C:\BuildScripts_RTC\Desktop':
  ensure => directory,
  source => 'puppet:///win_share/Software/Desktop',
  recurse => 'remote'
	}
  file {'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\SetDesktop.bat':
  ensure => file,
  source => 'puppet:///win_share/Software/Desktop/SetDesktop.bat',
  }
}
