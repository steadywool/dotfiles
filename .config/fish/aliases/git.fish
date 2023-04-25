function g
    git $argv
end

function ga
    git add --all --verbose
end

function gc
    git commit -am $argv
end

function gp
    git push
end
