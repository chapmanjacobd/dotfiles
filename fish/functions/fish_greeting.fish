# Defined in - @ line 2
function fish_greeting
	cat /proc/loadavg | cut -d' ' -f 2
    shuf -n 4 ~/mdrive/notes/(ls -p  ~/mdrive/notes/ |grep -v / | shuf -n 1) | cowsay -W 52 -f tux
end
