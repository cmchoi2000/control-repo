class windemo::set_puppet_interval ( 
  $pathnm = $facts['operatingsystem'] ? { 
    'windows' => 'C:/ProgramData/PuppetLabs/puppet/etc/puppet.conf', 
    /(CentOS|RedHat)/ => '/etc/puppetlabs/puppet/puppet.conf', 
  }, 
  $runint, 
  )

{ 
  ini_setting { 'change runinterval': 
    ensure  => present, 
    path    => $pathnm, 
    section => 'agent', 
    setting => 'runinterval', 
#    value   => $runint, 
    value   => '1h', 
  } 
} 
