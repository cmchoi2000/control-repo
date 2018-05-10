class windemo::install_vs2017 {
  file {'Remove VS.NET2017_15.6':
    ensure => absent,
    path => 'C:\Install\VS.NET2017_15.6',
    recurse => true,
    purge => true,
    force => true
  } ->
  file {'C:\Install\VS.NET2017_15.7.1':
    ensure => directory,
    source => 'puppet:///win_share/Software/Microsoft/VS.NET2017_15.7.1',
    recurse => 'remote'
  }
}
