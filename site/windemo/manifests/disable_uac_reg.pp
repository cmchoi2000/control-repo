class windemo::disable_uac_reg {

#  registry_key { 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System':
#      ensure => present,
#  }
  registry::value{'UAC':
    key    => 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System',
    value  => 'EnableLUA',
    type   => 'dword',
    data   => '0',
  }
#  registry_value { 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA':
#    type => dword,
#    data => '0'
#  } ->
  reboot { 'reboot after uac':
    subscribe => Registry::Value['UAC'],
#    apply   => finished,
  }
#    reboot { 'reboot after uac':
#    subscribe => registry_value,
#    when   => 'pending',
#  }
}
