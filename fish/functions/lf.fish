# Defined in - @ line 2
function lf
	setterm -linewrap off
    tree -FLh 3 --sort=mtime --dirsfirst --prune --du --noreport -up -C $argv | grep -v '/$'
    setterm -linewrap on
end
