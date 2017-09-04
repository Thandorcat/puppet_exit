Facter.add(:is_zabbixserver) do
  confine :kernel => 'Linux'
  setcode do
    if Facter.value(:fqdn) == 'centos.minsk.epam.com'
      true
    else
      false 
    end
  end
end