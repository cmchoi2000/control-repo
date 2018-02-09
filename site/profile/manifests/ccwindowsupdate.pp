class profile::ccwindowsupdate {
  class { 'windows_autoupdate': no_auto_update => '1'
}
