class profile::redis (
  $master = false,
) {
if $master {
class {'redis':
maxmemory => '10mb',
bind => $ipaddress,
}
} else {
class {'redis':
maxmemory => '10mb',
bind => $ipaddress,
slaveof => 'master.puppetlabs.vm 6479',
}
}
}
