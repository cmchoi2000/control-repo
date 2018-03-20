class windemo::installsab {
  file {'C:/Windows/Temp/InstallShield2016StandaloneBuild.exe':
  ensure => file,
  source => 'puppet:///win_share/Software/InstallShield/InstallShield\s2016/Installs/InstallShield\sStandalone\sBuild/InstallShield2016StandaloneBuild.exe',
  }
  package {'InstallShield SAB':
  ensure => installed,
  source => 'C:/Windows/Temp/InstallShield2016StandaloneBuild.exe',
  install_options => ['/s', '/v"LICENSETYPE=2 SERVERNAME=sfs-sw-license ADDLOCAL=ALL /qn"'],
  }
}
