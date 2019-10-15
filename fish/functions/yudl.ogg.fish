# Defined in - @ line 2
function yudl.ogg
	cd ~/Music/New
    youtube-dl --extract-audio --audio-format opus $argv
end
