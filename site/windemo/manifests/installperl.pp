class windemo::installperl {
  file {'C:\Windows\Temp\ActivePerl-5.22.1.2201-MSWin32-x64-299574.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Perl/ActivePerl-5.22.1.2201-MSWin32-x64-299574.msi',

  }
  package {'Perl':
  ensure => installed,
  source => 'C:\Windows\Temp\ActivePerl-5.22.1.2201-MSWin32-x64-299574.msi',
  install_options => ['/quiet'],
  }
}
