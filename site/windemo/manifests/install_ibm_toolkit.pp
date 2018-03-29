class windemo::install_ibm_toolkit {
  file {'C:\Install\RTC-BuildSystem-Toolkit-repo-6.0.3.zip':
  ensure => file,
  source => 'puppet:///win_share/Software/SCM/RTC-BuildSystem-Toolkit-repo-6.0.3.zip',
  }
#  package {'Microsoft Visual C++ Compiler Package for Python 2.7':
#  ensure => installed,
#  source => 'C:\Install\VCForPython27.msi',
#  install_options => ['/quiet', 'ALLUSERS=1'],
#  }
}
