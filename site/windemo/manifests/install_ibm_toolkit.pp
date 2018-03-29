class windemo::install_ibm_toolkit {
  file {'C:\Install\RTC\RTC-BuildSystem-Toolkit-repo-6.0.3.zip':
  ensure => file,
  source => 'puppet:///win_share/Software/RTC/RTC-BuildSystem-Toolkit-repo-6.0.3.zip',
  } ->
  file {'C:\Install\RTC\IBM_TK.xml':
  ensure => file,
  source => 'puppet:///win_share/Software/RTC/IBM_TK.xml',
  } ->
  exec { 'Extract IBM ToolKit':
    cwd => 'C:\Install\SCM',
    command => 'C:\Windows\System32\cmd.exe /c "C:\Install\SCM\7za.exe x C:\Install\RTC\RTC-BuildSystem-Toolkit-repo-6.0.3.zip -oC:\Install\RTC\RTC-BuildSystem-Toolkit-repo-6.0.3"',
    onlyif  => 'C:\Windows\System32\cmd.exe /c "if not exist C:\Install\RTC\RTC-BuildSystem-Toolkit-repo-6.0.3 (exit 0) else (exit 1)"',
  }
  exec { 'Install IBM ToolKit':
    cwd => 'C:\Program Files\IBM\Installation Manager\eclipse',
    command => 'C:\Windows\System32\cmd.exe /c "IBMIM.exe -input c:\Install\RTC\IBM_TK.xml -acceptLicense -silent -nosplash"',
    onlyif  => 'C:\Windows\System32\cmd.exe /c "if not exist "C:\Program Files\IBM\TeamConcertBuild" (exit 0) else (exit 1)"',
  }
}
