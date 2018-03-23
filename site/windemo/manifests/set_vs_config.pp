class windemo::set_vs_config {
	file {'C:\Users\Administrator\AppData\Local\Microsoft\MSBuild':
	ensure => directory,
	}
	file {'C:\Users\Administrator\AppData\Local\Microsoft\MSBuild\v4.0':
	ensure => directory,
	}
  file {'C:\Users\Administrator\AppData\Local\Microsoft\MSBuild\v4.0\Microsoft.Cpp.x64.user.props':
  ensure => file,
  source => 'puppet:///win_share/Software/Microsoft/VS.NET2010/Config/Microsoft.Cpp.x64.user.props',
  }
}
