Facter.add(:info) do
  setcode do
    kernel = Facter.value(:kernel)
    case kernel
    when 'Linux'
      Facter::Core::Execution.exec('cat /etc/puppetlabs/puppet/info.txt')
    else
      Facter::Core::Execution.exec('type C:\ProgramData\PuppetLabs\puppet\info.txt')
    end  
  end
end
