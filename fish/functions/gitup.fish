# Defined in - @ line 2
function gitup
	git add .
    git commit -m $argv
    git pull
    git push
end
