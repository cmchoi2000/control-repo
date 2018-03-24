class windemo::disable_uac_reg {

  registry_key { 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System':
      ensure => present,
  }
  registry_value { 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA':
    type => dword,
    data => '0'
  }
  reboot { 'reboot after uac':
    when   => 'pending',
  }
}
