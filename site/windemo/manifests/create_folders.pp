class windemo::create_folders {
	file {'C:\Install':
	ensure => directory,
	}
	file {'C:\Jenkins':
	ensure => directory,
	}
}
