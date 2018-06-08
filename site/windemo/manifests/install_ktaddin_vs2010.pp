class windemo::install_ktaddin_vs2010 {
  file {'C:\Install\KTAddinBuildEnv':
  ensure => directory,
  source => 'puppet:///win_share/Software/KTAddinBuildEnv/Current NGS 7.00/1.27.0.2010',
  recurse => 'remote'
  }
}
