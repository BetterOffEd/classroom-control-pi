class profile::redis (
  $master = false,
) {
  include profile::epel

  if $master {
    class { 'redis':
      maxmemory => '10mb',
      bind      => $ipaddress,
    }
  } else {
    class { 'redis':
      maxmemory => '10mb',
      bind      => $ipaddress,
      slaveof   => 'master.puppetlabs.vm 6479',
    }
  }

  Class['profile::epel'] -> Class['redis']
}
