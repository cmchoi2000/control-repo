class windemo::enable_net_35 {
  file {'C:\Install\sxs':
    ensure => directory,
    source => 'puppet:///win_share/Software/Microsoft/DotNet/3.5_sxs',
    recurse => 'remote'
  } ->
    dism { 'NetFx3':
    ensure => present,
    all    => true,
    source => 'C:\Install\sxs'
  }
}
