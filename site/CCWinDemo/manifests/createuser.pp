class createuser {
	user {'Test1':
	ensure => present,
	}
}
include createuser 