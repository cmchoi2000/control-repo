class windemo::install_perl5 {
	file {'C:\Install\Perl':
	ensure => directory,
	}
  file {'C:\Install\Perl\ActivePerl-5.22.1.2201-MSWin32-x64-299574.msi':
  ensure => file,
  source => 'puppet:///win_share/Software/Perl/ActivePerl-5.22.1.2201-MSWin32-x64-299574.msi',
  } ->
  package {'ActivePerl 5.22.1 Build 2201 (64-bit)':
  ensure => installed,
  source => 'C:\Install\Perl\ActivePerl-5.22.1.2201-MSWin32-x64-299574.msi',
  install_options => ['/quiet'],
  }
}
