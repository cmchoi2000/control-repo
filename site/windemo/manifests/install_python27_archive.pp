class windemo::install_python27_archive {

  archive {'C:\Install\Python\python-2.7.10.amd64.msi':
  ensure        => present,
  extract       => true,
  source        => '/usr/win/Software/Python/python-2.7.10.amd64.msi',
  }

}
