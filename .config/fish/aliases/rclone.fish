function mega_copy
    rclone copy -P mega: $HOME/Documents/Cours
end

function mega_sync
    rclone sync -P $HOME/Documents/Cours mega:
end
