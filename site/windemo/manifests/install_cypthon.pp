class windemo::install_cypthon {
  file {'C:\Install\Python\Cypthon':
  ensure => directory,
  source => 'puppet:///win_share/Software/Python/Cypthon',
  recurse => 'remote'
  } ->
  exec { 'Install Cython':
    cwd => 'C:\Install\Python\Cypthon',
    command => 'C:\Windows\System32\cmd.exe /c "C:\Install\Python\Cypthon\install-cython.cmd"',
    onlyif  => 'C:\Windows\System32\cmd.exe /c "if not exist C:\Python27\Scripts\cython.exe (exit 0) else (exit 1)"',
  }
}
