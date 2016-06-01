class profile::redis {
  include profile::redis

  class { 'redis':
    maxmemory => 10mb,
  }
}
