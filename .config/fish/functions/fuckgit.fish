# Defined in /tmp/fish.UMey6t/fuckgit.fish @ line 2
function fuckgit
    git reset --hard
    git clean -fdx
    git gc --aggressive --prune=now
end
