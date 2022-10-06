Facter.add(:info) do
  setcode do
    kernel = Facter.value(:kernel)
    case kernel
    when 'Linux'
      Facter::Core::Execution.exec('cat /etc/puppetlabs/puppet/info.txt')
    when 'windows'
      Facter::Core::Execution.exec('ipconfig')
    else
      'production'
    end  
  end
end
