class windemo::registrytest {

registry_key { 'HKLM\System\CurrentControlSet\Services\Puppet1':
    ensure => present,
}

}
