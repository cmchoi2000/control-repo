class profile::ccwindowsupdate {
  class { 'windows_autoupdate': noAutoUpdate => '1' }

}
