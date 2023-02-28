Facter.add(:bnmenv) do
#  confine :clientcert => 'ip-10-8-0-221.ap-southeast-1.compute.internal'
#  setcode do
#    envgrp = Facter.value('Test')
#    envgrp
#  end
  setcode 'which ruby'
end
