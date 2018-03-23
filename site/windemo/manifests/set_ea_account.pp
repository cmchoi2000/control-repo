class windemo::set_ea_account {
  file {'C:\Users\cc-adm-surfscan_EC':
  ensure => directory,
  source => 'puppet:///win_share/Software/ElectricCloud/Win7/cc-adm-surfscan_EC',
  recurse => 'remote'
  }
}
