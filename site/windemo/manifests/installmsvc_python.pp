class windemo::installmsvc_python {
  file {'C:\Windows\Temp\VCForPython27.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/MSVC_Python27/VCForPython27.msi',

  }
  package {'MSVC Python':
  ensure => installed,
  source => 'C:\Windows\Temp\VCForPython27.msi',
  install_options => ['/quiet'],
  }
}
