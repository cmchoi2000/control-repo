class windemo::install_vs2010 {
  file {'C:\Install\VS.NET2010':
    ensure => directory,
    source => 'puppet:///win_share/Software/Microsoft/VS.NET2010/VS.NET2010-DVD',
    recurse => 'remote'
  } ->  
  file {'C:\Install\VS.NET2010-SP1':
    ensure => directory,
    source => 'puppet:///win_share/Software/Microsoft/VS.NET2010/VS.NET2010-SP1',
    recurse => 'remote'
  }
}
