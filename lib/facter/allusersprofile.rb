require 'facter'

Facter.add(:allusersprofile) do
  confine :kernel => 'windows'
  setcode do
    ENV['ALLUSERSPROFILE']
  end
end

