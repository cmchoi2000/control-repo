class windemo::install_dx11 {
  file {'C:\Install\DXSDK_Aug09.exe':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/DX11/2009-Aug-SDK/DXSDK_Aug09.exe',

  }
  package {'Microsoft DirectX SDK (August 2009)':
  ensure => installed,
  source => 'C:\Install\DXSDK_Aug09.exe',
  install_options => ['/U'],
  }
}
