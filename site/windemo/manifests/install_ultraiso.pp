class windemo::install_ultraiso {
  file {'C:\Install\uiso9_pe.exe':
  ensure => file,
  source => 'puppet:///win_share/Software/UltraISO/9.6.6.3300/uiso9_pe.exe',
  } ->
  package {'UltraISO Premium V9.66':
  ensure => installed,
  source => 'C:\Install\uiso9_pe.exe',
  install_options => ['/silent'],
  } ->
  file {'C:\Program Files (x86)\UltraISO\uikey.ini':
  ensure => file,
  source => 'puppet:///win_share/Software/UltraISO/9.6.6.3300/uikey.ini',
  }
}
