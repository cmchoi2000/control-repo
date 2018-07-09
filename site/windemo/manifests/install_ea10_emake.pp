class windemo::install_ea10_emake {
  
	file {'C:\Install\ElectricAccelerator':
    ensure => directory,
	} ->
	file {'C:\Install\ElectricAccelerator\10.1.0.80918':
    ensure => directory,
	} ->  
  file {'C:\Install\ElectricAccelerator\10.0.3.78576\ElectricAccelerator-10.0.3.78576-Windows-Install.exe':
    ensure => absent,
  } ->
  file {'C:\Install\ElectricAccelerator\10.0.3.78576\VSIntegration-5.2.5.39245-Install.exe':
    ensure => absent,
  } ->
  file {'C:\Install\ElectricAccelerator\10.0.3.78576':
    ensure => absent,
  } ->
  file {'C:\Install\ElectricAccelerator\10.1.0.80918\ElectricAccelerator-10.1.0.80918-Windows-Install.exe':
    ensure => file,
    source => 'puppet:///win_share/Software/ElectricCloud/10.1.0.80918/windows/ElectricAccelerator-10.1.0.80918-Windows-Install.exe',
  } ->
  package {'ElectricAccelerator':
    ensure => installed,
    source => 'C:\Install\ElectricAccelerator\10.1.0.80918\ElectricAccelerator-10.1.0.80918-Windows-Install.exe',
    install_options => ['--mode', 'silent'],
  }
}
