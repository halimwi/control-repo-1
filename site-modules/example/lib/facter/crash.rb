Facter.add(:crash) do
  setcode do
    Facter::Core::Execution.exec('exit 1')
  end
end
