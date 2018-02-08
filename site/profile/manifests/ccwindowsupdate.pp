class profile::ccwindowsupdate {
  include windows_autoupdate
  class { 'windows_autoupdate': noAutoUpdate => '1' }

}
