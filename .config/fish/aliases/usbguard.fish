function usbl
    usbguard list-devices -t
end

function usba
    usbguard allow-device
end

function usbp
    usbguard allow-device --permanent
end
