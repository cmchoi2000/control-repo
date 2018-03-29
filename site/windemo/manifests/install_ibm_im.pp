class windemo::install_ibm_im {
  file {'C:\Install\agent.installer.win32.win32.x86_64_1.8.6000.20161118_1611.zip':
  ensure => file,
  source => 'puppet:///win_share/Software/RTC/agent.installer.win32.win32.x86_64_1.8.6000.20161118_1611.zip',
  }
#  package {'Microsoft Visual C++ Compiler Package for Python 2.7':
#  ensure => installed,
#  source => 'C:\Install\VCForPython27.msi',
#  install_options => ['/quiet', 'ALLUSERS=1'],
#  }
}
