class windemo::install_ktaddin_vs2017 {
  file {'C:\Install\KTAddinBuildEnv_VS2017':
  ensure => directory,
  source => 'puppet:///win_share/Software/KTAddinBuildEnv/VS2017',
  recurse => 'remote'
  }
}
