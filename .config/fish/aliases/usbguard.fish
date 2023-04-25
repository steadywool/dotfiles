function usbl
    usbguard list-devices -t
end

function usba
    usbguard allow-device $argv
end

function usbp
    usbguard allow-device --permanent $argv
end
