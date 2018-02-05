class windemo::createlogin {
	user {'test01':
			name      => 'Test Account 01',
			ensure    => present,
			groups    => ['Users','Administrators'],
			password  => 'helloworld',
			managehome => true,
	}
}
