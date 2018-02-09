class profile::ccwindowsupdate { 
   class {'wsus_client': 
     no_auto_update => true, 
   } 
 } 
