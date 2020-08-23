function cd -w cd
builtin cd (realpath $argv 2> /dev/null)
end
