class CCWinDemo::createfile {
	file {'C:\Users\Administrator\Documents\testfile.txt':
	ensure => present,
	content => 'hello world 123abc',
	}
}
include createfile
