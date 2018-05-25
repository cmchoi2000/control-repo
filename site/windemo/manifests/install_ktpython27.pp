class windemo::install_ktpython27 {
  file {'C:\Install\Python\Python_2.7.10156.iso':
  ensure => file,
  source => 'puppet:///win_share/Software/KT/Python/Python_2.7.10156.iso',
  }
}
