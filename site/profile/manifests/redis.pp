class profile::redis {
  include profile::epel

  class { 'redis':
    maxmemory => '10mb',
  }

  Class['profile::epel'] -> Class['redis']
}
