Facter.add(:environment_group) do
#  confine :clientcert => 'ip-10-8-0-221.ap-southeast-1.compute.internal'
  setcode do
    env_grp = Facter.value('Test')
    env_grp
  end
end
