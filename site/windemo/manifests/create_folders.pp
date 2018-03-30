class windemo::create_folders {
	file {'C:\Install':
	  ensure => directory,
	}
	file {'C:\BuildScripts_RTC':
	  ensure => directory,
	}
	file {'C:\Jenkins':
	  ensure => directory,
	}
	file {'C:\Temp':
  	ensure => directory,
	}
	file {'C:\RTC_Builds':
  	ensure => directory,
	}
	file {'C:\ECTemp':
  	ensure => directory,
	}
	file {'C:\IMC':
  	ensure => directory,
	}
	file {'C:\NGS':
  	ensure => directory,
	}
  file {'C:\Install\Desktop':
    ensure => directory,
    source => 'puppet:///win_share/Software/Desktop',
    recurse => 'remote'
	}
  file {'C:\Install\SCM':
    ensure => directory,
    source => 'puppet:///win_share/Software/SCM',
    recurse => 'remote'
	}
  file {'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\SetDesktop.bat':
    ensure => file,
    source => 'puppet:///win_share/Software/Desktop/SetDesktop.bat',
  }
}
