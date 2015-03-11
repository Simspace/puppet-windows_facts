require 'facter'

Facter.add(:systemdrive) do
  confine :kernel => 'windows'
  setcode do
    ENV['SystemDrive']
  end
end

