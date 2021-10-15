# Defined in - @ line 2
function devmode
	killall node
    cd ~/tp/unli/v-abram/
    env BROWSER=none npm start &
    cd ~/tp/unli/api/
    npm run-script dev
end
