class createfile {
	file {'C:\Users\Administrator\Documents\testfile.txt':
	ensure => present,
	content => 'hello world 123',
	}
}
include createfile
