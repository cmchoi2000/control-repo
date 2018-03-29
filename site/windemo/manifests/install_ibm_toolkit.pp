class windemo::install_ibm_toolkit {
  file {'C:\Install\RTC-BuildSystem-Toolkit-repo-6.0.3.zip':
  ensure => file,
  source => 'puppet:///win_share/Software/RTC/RTC-BuildSystem-Toolkit-repo-6.0.3.zip',
  }
  exec { 'Extract IBM ToolKit':
    cwd => 'C:\Install\SCM',
    command => 'C:\Windows\System32\cmd.exe /c "C:\Install\SCM\7za.exe x C:\Install\RTC-BuildSystem-Toolkit-repo-6.0.3.zip -oC:\Install\RTC-BuildSystem-Toolkit-repo-6.0.3"',
    onlyif  => 'C:\Windows\System32\cmd.exe /c "if not exist C:\Install\RTC-BuildSystem-Toolkit-repo-6.0.3 (exit 0) else (exit 1)"',
  }
#  package {'Microsoft Visual C++ Compiler Package for Python 2.7':
#  ensure => installed,
#  source => 'C:\Install\VCForPython27.msi',
#  install_options => ['/quiet', 'ALLUSERS=1'],
#  }
}
