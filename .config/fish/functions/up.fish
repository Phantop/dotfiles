# Defined in /tmp/fish.qPw09H/up.fish @ line 2
function up
	if tty | grep 'not a tty'
            st -e sudo eopkg up --y
        else
            se up --y
        end
end
