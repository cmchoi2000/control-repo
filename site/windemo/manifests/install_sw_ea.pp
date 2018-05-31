class windemo::install_sw_ea {
  include windemo::enable_rdp
  include windemo::set_admin_pwd_ne
  include windemo::disable_uac_reg
  include windemo::enable_net_35
  include windemo::set_power_scheme
  include windemo::set_win_update
  include windemo::install_win10_sdk
  include windemo::install_vs2017_1571
  include windemo::install_sql2014
  include windemo::install_dx11
  include windemo::install_odac
  include windemo::install_msvc_2010_redist
  include windemo::install_msvc_python27
  include windemo::install_python27
  include windemo::install_cypthon
  include windemo::install_ea10_agent
  include windemo::set_vs_config
  include windemo::set_ea_account
  include windemo::set_puppet_interval

   Class['windemo::enable_rdp'] ->
   Class['windemo::set_admin_pwd_ne'] ->
   Class['windemo::disable_uac_reg'] ->
   Class['windemo::enable_net_35'] ->
   Class['windemo::set_power_scheme'] ->
   Class['windemo::set_win_update'] ->
   Class['windemo::install_win10_sdk'] ->
   Class['windemo::install_vs2017_1571'] ->
   Class['windemo::install_sql2014'] ->
   Class['windemo::install_dx11'] ->
   Class['windemo::install_odac'] ->
   Class['windemo::install_msvc_2010_redist'] ->
   Class['windemo::install_msvc_python27'] ->
   Class['windemo::install_python27'] ->
   Class['windemo::install_cypthon'] ->
   Class['windemo::install_ea10_agent'] ->
   Class['windemo::set_vs_config'] ->
   Class['windemo::set_ea_account'] ->
   Class['windemo::set_puppet_interval']
}
