class windemo::installsab {
#  file {'C:\Install\InstallShield2016StandaloneBuild.exe':
#  ensure => file,
#  source => 'puppet:///win_share/Software/InstallShield/InstallShield 2016/Installs/InstallShield Standalone Build/InstallShield2016StandaloneBuild.exe',
#  }
  package {'InstallShield 2016 Standalone Build':
  ensure => installed,
  source => 'C:\Install\InstallShield2016StandaloneBuild.exe',
  install_options => ['/s', '/v"LICENSETYPE=2', 'SERVERNAME=sfs-sw-license', 'ADDLOCAL=ALL', '/qn"'],
  }
}
