function update -d 'Update the system'
    echo 'Updating Pacman packages'
    sudo pacman -Syu

    echo 'Updating flatpak packages'
    flatpak update
end
