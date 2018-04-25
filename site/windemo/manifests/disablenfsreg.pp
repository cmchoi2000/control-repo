class windemo::disablenfsreg {

  registry::value{'LanmanServer':
    key    => 'HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters',
    value  => 'Size',
    type   => 'dword',
    data   => '3',
  }
