define windemo::set_path(
  $ensure    = 'present',
  $directory = 'C:\Program Files (x86)\PuTTY',
  $target    = 'Machine',
) {
  # Ensure only valid parameters.
  validate_absolute_path($directory)
  validate_re($ensure, '^(present|absent)$', 'Invalid ensure parameter')
  validate_re($target, '^(Machine|User)$', 'Invalid target parameter')

  # Set the PATH environment variable, and refresh the environment.
  include windows::refresh_environment
  exec { "windows-path-${name}":
    command  => template('windows/path_set.ps1.erb'),
    unless   => template('windows/path_check.ps1.erb'),
    provider => 'powershell',
    notify   => Class['windows::refresh_environment'],
  }
}
