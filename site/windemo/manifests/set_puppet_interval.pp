class windemo::install_odac ( 
   $pathnm = $facts['operatingsystem'] ? { 
     'windows' => 'C:/ProgramData/PuppetLabs/puppet/etc/puppet.conf', 
     /(CentOS|RedHat)/ => '/etc/puppetlabs/puppet/puppet.conf', 
   }, 
   $runint=3600, 
   ) 
{ 
   ini_setting { 'change runinterval': 
     ensure  => present, 
     path    => $pathnm, 
     section => 'agent', 
     setting => 'runinterval', 
     value   => $runint, 
   } 
} 
