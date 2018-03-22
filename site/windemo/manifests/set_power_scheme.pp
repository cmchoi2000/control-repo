# == Class: windows::power_scheme
#
# Configures the power scheme used by Windows.
#
# === Parameters
#
# [*ensure*]
#  The power scheme to use, defaults to 'Balanced'.  Must correspond to a key in the
#  `$guids` parameter.
#
# [*guids*]
#  A mapping of power scheme names to their GUID.  The default schemes supported are:
#  'Balanced', 'High performance', and 'Power saver'.
#

# performance power scheme GUID


class windemo::set_power_scheme {
  $guid = '8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c'

  exec { 'set performance power scheme':
    command   => "PowerCfg -SetActive ${guid}",
    path      => 'C:\Windows\System32;C:\Windows\System32\WindowsPowerShell\v1.0',
    unless    => "if((Powercfg -GetActiveScheme).Split()[3] -ne '${guid}') { exit 1 }",
    provider  => powershell,
    logoutput => true,
  }  
}
