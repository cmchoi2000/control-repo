class windemo::createlogin {
	user {'ktmfg':
			name      => 'ktmfg',
			ensure    => present,
			groups    => [Administrators'],
			password_max_age => -1,
			managehome => true,
	}
}
