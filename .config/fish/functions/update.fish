function update -d 'Update the system'
    echo 'Updating Pacman packages'
    pacman -Syu

    echo 'Updating flatpak packages'
    flaptak update
end
