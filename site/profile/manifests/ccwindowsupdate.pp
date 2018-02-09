class profile::ccwindowsupdate {
  class {'wsus_client': 
6     no_auto_update => true, 
7   } 
}
