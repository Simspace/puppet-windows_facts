require 'facter'

Facter.add(:programfilesx86) do
  confine :kernel => 'windows'
  setcode do
    if ENV['ProgramFiles(x86)']
        ENV['ProgramFiles(x86)']
    else
        ENV['ProgramFiles']
    end
  end
end

