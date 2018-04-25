class windemo::disable_nfs_lanman_reg {

  registry::value{'LanmanServer':
    key    => 'HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters',
    value  => 'Size',
    type   => 'dword',
    data   => '3',
  } ->
  registry::value{'Memory':
    key    => 'HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management',
    value  => 'LargeSystemCache',
    type   => 'dword',
    data   => '1',
  }
}
