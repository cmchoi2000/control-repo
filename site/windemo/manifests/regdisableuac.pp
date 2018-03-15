class windemo::regdisableuac {

registry_key { 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System':
    ensure => present,
}
registry_value { 'HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA':
  type => dword,
  data => '0'
}

}
