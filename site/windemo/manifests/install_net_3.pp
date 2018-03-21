class windemo::install_net_3 {
  file {'C:\Temp\sxs':
  ensure => directory,
  source => 'puppet:///win_share/Software/Microsoft/WindowsServer2012R2/sxs',
  recurse => 'remote'
  }
}
