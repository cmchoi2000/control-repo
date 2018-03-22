class windemo::install_msvc_python27 {
  file {'C:\Install\VCForPython27.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/MSVC_Python27/VCForPython27.msi',
  } ->
  package {'Microsoft Visual C++ Compiler Package for Python 2.7':
  ensure => installed,
  source => 'C:\Install\VCForPython27.msi',
  install_options => ['/quiet'],
  }
}
