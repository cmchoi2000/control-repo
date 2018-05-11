class windemo::install_ea10_agent {
	file {'C:\Install\ElectricAccelerator':
    ensure => directory,
	}
	file {'C:\Install\ElectricAccelerator\10.0.3.78576':
    ensure => directory,
	} ->  
  file {'C:\Install\ElectricAccelerator\ElectricAccelerator-10.0.1.78161-Windows-Install.exe':
    ensure => absent,
  } ->
  file {'C:\Install\ElectricAccelerator\ElectricAccelerator-10.0.3.78576-Windows-Install.exe':
    ensure => absent,
  } ->
  file {'C:\Install\ElectricAccelerator\install10.props':
    ensure => absent,
  } ->
  file {'C:\Install\ElectricAccelerator\10.0.3.78576\ElectricAccelerator-10.0.3.78576-Windows-Install.exe':
    ensure => file,
    source => 'puppet:///win_share/Software/ElectricCloud/10.0.3.78576/windows/ElectricAccelerator-10.0.3.78576-Windows-Install.exe',
  } ->
  file {'C:\Install\ElectricAccelerator\10.0.3.78576\install10.props':
    ensure => file,
    source => 'puppet:///win_share/Software/ElectricCloud/install10.props',
  } ->
  file {'C:\Install\ElectricAccelerator\10.0.3.78576\VSIntegration-5.2.5.39245-Install.exe':
    ensure => file,
    source => 'puppet:///win_share/Software/ElectricCloud/VSPlugin/5.2.5.39245/VSIntegration-5.2.5.39245-Install.exe',
  } ->
  package {'ElectricAccelerator':
    ensure => installed,
    source => 'C:\Install\ElectricAccelerator\10.0.3.78576\ElectricAccelerator-10.0.3.78576-Windows-Install.exe',
    install_options => ['--mode', 'silent', '--propertyfile', 'C:\Install\ElectricAccelerator\10.0.3.78576\install10.props'],
  } ->
  file {'C:\ECloud\i686_win32\bin\runagent.local':
    ensure => file,
    source => 'puppet:///win_share/Software/ElectricCloud/runagent.local',
  }
}
