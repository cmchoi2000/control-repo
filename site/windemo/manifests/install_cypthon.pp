class windemo::install_cypthon {
  file {'C:\Install\Cypthon':
  ensure => directory,
  source => 'puppet:///win_share/Software/Python/Cypthon',
  recurse => 'remote'
  }
#  exec { 'Install Cypthon':
#    command => 'cd C:\Install\Cypthon; C:\Install\Cypthon\install-cython.cmd',
#    onlyif   => 'if not exist C:\Python27\Scripts\cython.exe',
#  }
}
