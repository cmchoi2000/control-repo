class profile::ccwindowsupdate { 
   class {'wsus_client': 
    auto_update_option     => "NotifyOnly",
    #no_auto_update => true, 
   } 
 } 
