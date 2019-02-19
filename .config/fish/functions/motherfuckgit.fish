# Defined in /tmp/fish.XTFPQZ/motherfuckgit.fish @ line 1
function motherfuckgit
	g clean -xfd
    g submodule foreach --recursive git clean -xfd
    g reset --hard
    g submodule foreach --recursive git reset --hard
    g submodule update --init --recursive
end
