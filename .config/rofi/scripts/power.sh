# TO-DO: restyle and redo the script.


ACTION=$(echo -e "\n\n" | rofi -dmenu -p "power")

if [[ $ACTION == "" ]];
    then systemctl poweroff
elif [[ $ACTION == "" ]];
    then systemctl reboot
elif [[ $ACTION == "" ]];
    then i3-msg exit
fi
