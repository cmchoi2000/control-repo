class windemo::install_vs2017_1571 {
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
  } ->  
  package {'Visual Studio Enterprise 2017':
    ensure => installed,
    source => 'C:\Install\VS.NET2017_15.7.1\vs_Enterprise.exe',
    install_options => ['--in', 'C:\Install\VS.NET2017_15.7.1\SFS_SCM_Response.json', '--wait'],
  }
  reboot {'Reboot After VS2017':
    subscribe => Package['Visual Studio Enterprise 2017'],
  }
}
