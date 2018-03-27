class windemo::install_odac {
  file {'C:\Install\ODAC112021Xcopy_x64':
  ensure => directory,
  source => 'puppet:///win_share/Software/Oracle/ODAC112021Xcopy_x64',
  recurse => 'remote'
  }
#  exec { 'odac':
#    command => 'C:\Install\ODAC112021Xcopy_x64\install.bat'
#    provider => windows,
#    onlyif   => 'if not exist C:\oracle',
#  }
}
