class windemo::createfile {
	file {'C:\Users\Administrator\Documents\testfile.txt':
	ensure => present,
	content => 'hello world',
	}
}
