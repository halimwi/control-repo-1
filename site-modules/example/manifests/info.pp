class example::info {
  file { '/etc/puppetlabs/puppet/info.txt':
    ensure  => 'present',
    content => "production123",
    mode    => '0644',
  }
}
