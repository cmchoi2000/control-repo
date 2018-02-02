class windemo::createuser {
	user {'Test1':
	ensure => present,
	}
}
include createuser
