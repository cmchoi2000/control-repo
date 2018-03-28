class windemo::install_odac {
  file {'C:\Install\ODAC112021Xcopy_x64':
  ensure => directory,
  source => 'puppet:///win_share/Software/Oracle/ODAC112021Xcopy_x64',
  recurse => 'remote'
  }

  exec { 'Install ODAC':
    cwd => 'C:\Install\ODAC112021Xcopy_x64',
    command => 'C:\Windows\System32\cmd.exe /c "install.bat all c:\oracle odac"',
    onlyif  => 'C:\Windows\System32\cmd.exe /c "if not exist C:\oracle (exit 0) else (exit 1)"',

#  exec { 'C:\Install\ODAC112021Xcopy_x64\install.bat all c:\oracle odac':
#    cwd => 'C:\Install\ODAC112021Xcopy_x64',
#    command => 'C:\Install\ODAC112021Xcopy_x64\install.bat'
#    provider => windows,
#    onlyif   => 'if not exist C:\oracle',
  }
}
