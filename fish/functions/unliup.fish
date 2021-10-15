# Defined in - @ line 2
function unliup
	unliadmin
    cd ~/webdev/unli/home/production/admin/domains/travel.unli.xyz/public_html
    chmod -R a=r,u+w,a+X /home/xk/Desktop/travelplanner/v-abram/build/
    cp -R ~/webdev/unli/home/production/admin/domains/travel.unli.xyz/public_html/new/ ~/webdev/unli/home/production/admin/domains/travel.unli.xyz/public_html/old/
    ln -sfn old ~/webdev/unli/home/production/admin/domains/travel.unli.xyz/public_html/public
    rsync $argv --update -raz --progress --no-perms --no-owner --no-group --exclude dev-info --exclude .git --exclude data/old ~/Desktop/travelplanner/v-abram/build/ ~/webdev/unli/home/production/admin/domains/travel.unli.xyz/public_html/new/
    ln -sfn new ~/webdev/unli/home/production/admin/domains/travel.unli.xyz/public_html/public
    chmod -R a=r,u+w,a+X ~/webdev/unli/home/production/admin/domains/travel.unli.xyz/public_html/public/
    cd ~/travelplanner/unli/
    fusermount -u /home/xk/webdev/unli
end
