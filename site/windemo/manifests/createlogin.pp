class windemo::createlogin {
	user {'test01':
			name      => 'service',
			ensure    => present,
			groups    => ['Users','Administrators'],
			password  => 'helloworld',
			managehome => true,
	}
}
