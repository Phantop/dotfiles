# Defined in /tmp/fish.XTFPQZ/motherfuckgit.fish @ line 1
function motherfuckgit
	git clean -xfd
    git submodule foreach --recursive git clean -xfd
    git reset --hard
    git submodule foreach --recursive git reset --hard
    git submodule update --init --recursive
end
