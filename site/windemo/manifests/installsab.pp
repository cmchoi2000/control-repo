class windemo::installsab {
  file {'C:/Windows/Temp/InstallShield2016StandaloneBuild.exe':
  ensure => file,
  source => 'puppet:///win_share/Software/InstallShield/InstallShield 2016/Installs/InstallShield Standalone Build/InstallShield2016StandaloneBuild.exe',

  }
  package {'InstallShield SAB':
  ensure => installed,
  source => 'C:/Windows/Temp/InstallShield2016StandaloneBuild.exe',
  install_options => ['/silent'],
  }
}
