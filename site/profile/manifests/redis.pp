class profile::redis {
  class { 'redis':
    maxmemory        => '10mb',
  }
}
