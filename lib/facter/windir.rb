require 'facter'

Facter.add(:windir) do
  confine :kernel => 'windows'
  setcode do
    ENV['WinDir']
  end
end

