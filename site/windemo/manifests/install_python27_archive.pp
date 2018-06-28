class windemo::install_python27_archive {

  $message = lookup('message')
  notify { $message: }

  $message2 = lookup('message2')
  notify { $message2: }

  archive {'C:\Install\Python':
  ensure        => present,
#  extract       => true,
#  source        => '/usr/win/Software/Python/python-2.7.10.amd64.msi',
#  source        => 'C:\temp\python-2.7.10.amd64.msi',
  source => 'puppet:///win_share/Software/Python/python-2.7.10.amd64.msi',
  }

  package {'Microsoft Visual C++ Compiler Package for Python 2.7':
    notify { "Python27" }
  }

  package {'ActivePerl 5.22.1 Build 2201 (64-bit)':
    notify { "ActivePerl" }
  }

}
