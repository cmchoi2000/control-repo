class windemo::install_sw_sp7_vs2017_dev {
  include windemo::enable_rdp
  include windemo::set_admin_pwd_ne
  include windemo::disable_nfs_lanman_reg
  include windemo::disable_uac_reg
  include windemo::enable_net_35
  include windemo::set_power_scheme
  include windemo::set_win_update
  include windemo::install_ultraiso
  include windemo::install_win10_sdk
  include windemo::install_vs2017_1571
  include windemo::install_ktaddin_vs2017
  include windemo::install_sql2014_std
  include windemo::install_dx11
  include windemo::install_odac
  include windemo::install_msvc_2010_redist
  include windemo::install_msvc_python27
  include windemo::install_ktpython27
  include windemo::install_putty
  include windemo::install_bc4
  include windemo::set_puppet_interval

   Class['windemo::enable_rdp'] ->
   Class['windemo::set_admin_pwd_ne'] ->
   Class['windemo::disable_nfs_lanman_reg'] ->
   Class['windemo::disable_uac_reg'] ->
   Class['windemo::enable_net_35'] ->
   Class['windemo::set_power_scheme'] ->
   Class['windemo::set_win_update'] ->
   Class['windemo::install_ultraiso'] ->
   Class['windemo::install_win10_sdk'] ->
   Class['windemo::install_vs2017_1571'] ->
   Class['windemo::install_ktaddin_vs2017'] ->
   Class['windemo::install_sql2014_std'] ->
   Class['windemo::install_dx11'] ->
   Class['windemo::install_odac'] ->
   Class['windemo::install_msvc_2010_redist'] ->
   Class['windemo::install_msvc_python27'] ->
   Class['windemo::install_ktpython27'] ->
   Class['windemo::install_putty'] ->
   Class['windemo::install_bc4'] ->
   Class['windemo::set_puppet_interval']
}
