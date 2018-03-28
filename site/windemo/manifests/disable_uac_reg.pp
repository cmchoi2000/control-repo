class windemo::disable_uac_reg {

  registry::value{'UAC':
    key    => 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System',
    value  => 'EnableLUA',
    type   => 'dword',
    data   => '0',
  }
  reboot { 'reboot after uac':
    subscribe => Registry::Value['UAC'],
}
