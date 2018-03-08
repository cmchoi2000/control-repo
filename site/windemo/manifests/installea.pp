class windemo::installea {
  file {'C:\Windows\Temp\ElectricAccelerator-10.0.1.78161-Windows-Install.exe':
  ensure => file,
  source => 'puppet:///usr/win/Software/ElectricCloud/10.0.1.78161/windows/ElectricAccelerator-10.0.1.78161-Windows-Install.exe',

  }
  package {'EA emake':
  ensure => installed,
  source => 'C:\Windows\Temp\ElectricAccelerator-10.0.1.78161-Windows-Install.exe',
  install_options => ['/silent'],
  }
}
