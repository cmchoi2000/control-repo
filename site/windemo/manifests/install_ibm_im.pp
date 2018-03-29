class windemo::install_ibm_im {
  file {'C:\Install\agent.installer.win32.win32.x86_64_1.8.6000.20161118_1611.zip':
  ensure => file,
  source => 'puppet:///win_share/Software/RTC/agent.installer.win32.win32.x86_64_1.8.6000.20161118_1611.zip',
  } ->
  exec { 'Install IBM IM':
    cwd => 'C:\Install\SCM',
    command => 'C:\Windows\System32\cmd.exe /c "C:\Install\SCM\7za.exe a -r C:\Install\agent.installer.win32.win32.x86_64_1.8.6000.20161118_1611.zip C:\Install\agent.installer.win32.win32.x86_64_1.8.6000.20161118_1611"',
    onlyif  => 'C:\Windows\System32\cmd.exe /c "if not exist C:\Install\agent.installer.win32.win32.x86_64_1.8.6000.20161118_1611 (exit 0) else (exit 1)"',
  }
#  package {'Microsoft Visual C++ Compiler Package for Python 2.7':
#  ensure => installed,
#  source => 'C:\Install\VCForPython27.msi',
#  install_options => ['/quiet', 'ALLUSERS=1'],
#  }
}
