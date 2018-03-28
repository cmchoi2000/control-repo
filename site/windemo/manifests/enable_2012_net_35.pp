class windemo::enable_2012_net_35 {
  file {'C:\Install\sxs':
    ensure => directory,
    source => 'puppet:///win_share/Software/Microsoft/WindowsServer2012R2/sxs',
    recurse => 'remote'
  }
    dism { 'NetFx3':
    ensure => present,
    all    => true,
    source => 'C:\Install\sxs'
  }
}
