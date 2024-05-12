function nmwall --argument ssid zone
    command nmcli connection modify $ssid connection.zone $zone
end
