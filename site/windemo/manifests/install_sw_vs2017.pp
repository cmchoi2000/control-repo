class windemo::install_sw_vs2017 {
  include windemo::enable_rdp
  include windemo::set_admin_pwd_ne
  include windemo::disable_uac_reg
  include windemo::set_power_scheme
  include windemo::set_win_update
  include windemo::install_vs2017_1571
  include windemo::install_ibm_im
  include windemo::install_ibm_toolkit
  include windemo::install_perl5

   Class['windemo::enable_rdp'] ->
   Class['windemo::set_admin_pwd_ne'] ->
   Class['windemo::disable_uac_reg'] ->
   Class['windemo::set_power_scheme'] ->
   Class['windemo::set_win_update'] ->
   Class['windemo::install_vs2017_1571'] ->
   Class['windemo::install_ibm_im'] ->
   Class['windemo::install_ibm_toolkit'] ->
   Class['windemo::install_perl5']
}
