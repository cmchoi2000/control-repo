class windemo::install_ea10_emake {
	file {'C:\Install\ElectricAccelerator':
    ensure => directory,
	}
  file {'C:\Install\ElectricAccelerator\ElectricAccelerator-10.0.3.78576-Windows-Install.exe':
    ensure => file,
    source => 'puppet:///win_share/Software/ElectricCloud/10.0.3.78576/windows/ElectricAccelerator-10.0.3.78576-Windows-Install.exe',
  } ->
  package {'ElectricAccelerator':
    ensure => installed,
    source => 'C:\Install\ElectricAccelerator\ElectricAccelerator-10.0.3.78576-Windows-Install.exe',
    install_options => ['--mode', 'silent'],
  }
}
