class profile::redis {
  include profile::epel
  maxmemory => 10mb
}
