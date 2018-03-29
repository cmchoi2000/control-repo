class windemo::install_sab2016 {
	file {'C:\Install\SAB2016':
	ensure => directory,
	}
  file {'C:\Install\SAB2016\InstallShield2016StandaloneBuild.exe':
  ensure => file,
  source => 'puppet:///win_share/Software/InstallShield/InstallShield 2016/Installs/InstallShield Standalone Build/InstallShield2016StandaloneBuild.exe',
  } ->
  package {'InstallShield 2016 Standalone Build':
  ensure => installed,
  source => 'C:\Install\SAB2016\InstallShield2016StandaloneBuild.exe',
  install_options => ['/s', '/v"LICENSETYPE=2', 'SERVERNAME=sfs-sw-license', 'ADDLOCAL=ALL', '/qn"'],
  }
}
