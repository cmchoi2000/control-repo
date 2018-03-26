class windemo::install_sw {
  include windemo::enable_rdp
  include windemo::set_admin_pwd_ne
  include windemo::enable_net_3
  include windemo::disable_uac_reg
  #include windows::set_power_scheme
  include windemo::set_win_update
  include windemo::install_ultraiso
  #include windemo::install_sqlclr2014
  #include windemo::install_smo2014
  include windemo::install_dx11
  include windemo::install_msvc_2010_x64
  include windemo::install_msvc_2010_x86
  include windemo::install_msvc_python27
  include windemo::install_python27
  include windemo::install_perl5
  include windemo::install_putty
  #include windemo::install_sab2016
  include windemo::install_bc4
  include windemo::install_ea10
  include windemo::set_vs_config

   Class['windemo::enable_rdp'] -> Class['windemo::set_admin_pwd_ne'] -> Class['windemo::disable_uac_reg'] -> Class['windemo::enable_net_3'] -> Class['windemo::set_win_update'] ->
   Class['windemo::install_ultraiso'] -> Class['windemo::install_dx11'] -> Class['windemo::install_msvc_2010_x64'] -> Class['windemo::install_msvc_2010_x86'] ->
   Class['windemo::install_msvc_python27'] -> Class['windemo::install_python27'] -> Class['windemo::install_perl5'] -> Class['windemo::install_putty'] ->
   Class['windemo::install_bc4'] -> Class['windemo::install_ea10'] -> Class['windemo::set_vs_config']
}
