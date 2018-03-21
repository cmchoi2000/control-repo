class windemo::installea {
  file {'C:\Install\ElectricAccelerator-10.0.1.78161-Windows-Install.exe':
  ensure => file,
  source => 'puppet:///win_share/Software/ElectricCloud/10.0.1.78161/windows/ElectricAccelerator-10.0.1.78161-Windows-Install.exe',

  }
  package {'ElectricAccelerator':
  ensure => installed,
  source => 'C:\Install\ElectricAccelerator-10.0.1.78161-Windows-Install.exe',
  install_options => ['--mode', 'silent'],
  }
}
