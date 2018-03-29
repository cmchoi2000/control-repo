class windemo::install_ibm_im {
  file {'C:\Install\agent.installer.win32.win32.x86_64_1.8.9000.20180313_1417.zip':
  ensure => file,
  source => 'puppet:///win_share/Software/RTC/agent.installer.win32.win32.x86_64_1.8.9000.20180313_1417.zip',
  } ->
  exec { 'Extract IBM IM':
    cwd => 'C:\Install\SCM',
    command => 'C:\Windows\System32\cmd.exe /c "C:\Install\SCM\7za.exe x C:\Install\agent.installer.win32.win32.x86_64_1.8.9000.20180313_1417.zip -oC:\Install\agent.installer.win32.win32.x86_64_1.8.9000.20180313_1417"',
    onlyif  => 'C:\Windows\System32\cmd.exe /c "if not exist C:\Install\agent.installer.win32.win32.x86_64_1.8.9000.20180313_1417 (exit 0) else (exit 1)"',
  }
  package {'IBM Installation Manager':
  ensure => installed,
  source => 'C:\Install\agent.installer.win32.win32.x86_64_1.8.9000.20180313_1417\installc.exe',
  install_options => ['-acceptLicense'],
  }
}
