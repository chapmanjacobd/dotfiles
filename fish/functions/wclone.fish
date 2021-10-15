# Defined in - @ line 2
function wclone
	cd ~/backups/web/
    wget -e robots=off -np -nc -r -l inf -p $argv
end
