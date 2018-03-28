class windemo::install_cypthon {
  file {'C:\Install\Cypthon':
  ensure => directory,
  source => 'puppet:///win_share/Software/Python/Cypthon',
  recurse => 'remote'
  }
  exec { 'C:\Install\Cypthon\install-cython.cmd':
    cwd => 'C:\Install\Cypthon',
#    command => 'C:\Install\Cypthon\install-cython.cmd',
    onlyif   => 'if not exist C:\Python27\Scripts\cython.exe',
  }
}
