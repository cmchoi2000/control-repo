class windemo::install_ktaddin {
  file {'C:\Install\KTAddinBuildEnv':
  ensure => directory,
  source => 'puppet:///win_share/Software/KTAddinBuildEnv/VS2017',
  recurse => 'remote'
  }
}
