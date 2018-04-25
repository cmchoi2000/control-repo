class windemo::disable_nfs_memory_reg {

  registry::value{'Memory':
    key    => 'HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management',
    value  => 'LargeSystemCache',
    type   => 'dword',
    data   => '1',
  }
