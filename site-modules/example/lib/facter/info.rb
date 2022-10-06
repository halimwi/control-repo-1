Facter.add(:info) do
  confine :kernel => 'Linux'
  setcode do
    Facter::Core::Execution.exec('cat /etc/puppetlabs/puppet/info.txt')
  end
end
