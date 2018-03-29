class windemo::install_ibm_im {
  file {'C:\Install\RTC':
  ensure => directory,
  source => 'puppet:///win_share/Software/Desktop',
  recurse => 'remote'
	} ->
  file {'C:\Install\RTC\agent.installer.win32.win32.x86_64_1.8.9000.20180313_1417.zip':
  ensure => file,
  source => 'puppet:///win_share/Software/RTC/agent.installer.win32.win32.x86_64_1.8.9000.20180313_1417.zip',
  } ->
  exec { 'Extract IBM IM':
    cwd => 'C:\Install\SCM',
    command => 'C:\Windows\System32\cmd.exe /c "C:\Install\SCM\7za.exe x C:\Install\RTC\agent.installer.win32.win32.x86_64_1.8.9000.20180313_1417.zip -oC:\Install\RTC\agent.installer.win32.win32.x86_64_1.8.9000.20180313_1417"',
    onlyif  => 'C:\Windows\System32\cmd.exe /c "if not exist C:\Install\RTC\agent.installer.win32.win32.x86_64_1.8.9000.20180313_1417 (exit 0) else (exit 1)"',
  } ->
  package {'IBM Installation Manager':
  ensure => installed,
  source => 'C:\Install\RTC\agent.installer.win32.win32.x86_64_1.8.9000.20180313_1417\installc.exe',
  install_options => ['-acceptLicense'],
  }
}
