class windemo::install_ea10_agent {
	file {'C:\Install\ElectricAccelerator':
	ensure => directory,
	}
  file {'C:\Install\ElectricAccelerator\ElectricAccelerator-10.0.1.78161-Windows-Install.exe':
  ensure => file,
  source => 'puppet:///win_share/Software/ElectricCloud/10.0.1.78161/windows/ElectricAccelerator-10.0.1.78161-Windows-Install.exe',
  } ->
  file {'C:\Install\ElectricAccelerator\install10.props':
  ensure => file,
  source => 'puppet:///win_share/Software/ElectricCloud/install10.props',
  } ->
  package {'ElectricAccelerator':
  ensure => installed,
  source => 'C:\Install\ElectricAccelerator\ElectricAccelerator-10.0.1.78161-Windows-Install.exe',
  install_options => ['--mode', 'silent', '--propertyfile', 'C:\Install\ElectricAccelerator\install10.props'],
  }
}
