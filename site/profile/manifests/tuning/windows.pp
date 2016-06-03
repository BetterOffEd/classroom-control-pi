class profile::tuning::windows {
  registry_value { 'HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters':
    ensure => 'present',
    value  => 'KeepAliveInterval',
    data   => '1',
    type   => 'dword',
  }

  registry_value { 'HKLM\SYSTEM\CurrentControlSet\Services\TCPIP\Parameters':
    ensure => 'present',
    value  => 'TcpMaxDataRetransmissions',
    data   => '1',
    type   => 'dword',
  }

  registry_value { 'HKLM\SYSTEM\CurrentControlSet\Services\TCPIP\Parameters':
    ensure => 'present',
    value  => 'TcpTimedWaitDelay',
    data   => '0x0000001e',
    type   => 'binary',
  }
}
