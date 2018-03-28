class windemo::install_cypthon {
  file {'C:\Install\Cypthon':
  ensure => directory,
  source => 'puppet:///win_share/Software/Python/Cypthon',
  recurse => 'remote'
  }

  exec { 'Install Cython':
    cwd => 'C:\Install\Cypthon',
    command => 'C:\Windows\System32\cmd.exe /c "C:\Install\Cypthon\install-cython.cmd"',
    onlyif  => 'C:\Windows\System32\cmd.exe /c "if exist C:\Python27\Scripts\cython.ex (exit 0) else (exit 1)"',
#  exec { 'C:\Install\Cypthon\install-cython.cmd':
#    cwd => 'C:\Install\Cypthon',
#    command => 'C:\Install\Cypthon\install-cython.cmd',
#    onlyif   => 'if not exist C:\Python27\Scripts\cython.exe',
  }
}
