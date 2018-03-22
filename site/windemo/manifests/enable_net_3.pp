class windemo::enable_net_3 {
  windowsfeature { 'NET-Framework-Core':
    ensure => present,
    }
}
