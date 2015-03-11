require 'facter'

Facter.add(:programfiles) do
  confine :kernel => 'windows'
  setcode do
    if ENV['ProgramW6432']
      ENV['ProgramW6432']
    else
      ENV['ProgramFiles']
    end
  end
end

