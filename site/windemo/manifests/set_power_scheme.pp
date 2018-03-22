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

class { 'windows::power_scheme':
  ensure => 'High performance',
}
