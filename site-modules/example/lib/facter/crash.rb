Facter.add(:crash) do
  setcode do
    Facter::Core::Execution.execd('exit 1')
  end
end
