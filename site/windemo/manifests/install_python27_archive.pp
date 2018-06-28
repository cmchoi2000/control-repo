class windemo::install_python27_archive {

  archive {'C:\Install\Python':
  ensure        => present,
#  extract       => true,
#  source        => '/usr/win/Software/Python/python-2.7.10.amd64.msi',
#  source        => 'C:\temp\python-2.7.10.amd64.msi',
  source => 'puppet:///win_share/Software/Python/python-2.7.10.amd64.msi',
  }

  archive {'C:\Install\ODAC112021Xcopy_x64':
  ensure => present,
  source => 'puppet:///win_share/Software/Oracle/ODAC112021Xcopy_x64',
  }

}
