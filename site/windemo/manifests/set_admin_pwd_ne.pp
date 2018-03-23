class windemo::set_admin_pwd_ne {
  exec { 'Admin_Password_Expires':
    command   => 'WMIC USERACCOUNT WHERE "Name=\'administrator\'" SET PasswordExpires=FALSE',
    path      => $::path,
    unless    => 'cmd.exe /c net user administrator | find "Password" | find "expires" | findstr "Never"'
  }
}
