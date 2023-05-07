ACTION=$(echo -e " shutdown\n reboot\n sign out" | rofi -dmenu -p " power")

if [[ $ACTION == " shutdown" ]];
    then systemctl poweroff
elif [[ $ACTION == " reboot" ]];
    then systemctl reboot
elif [[ $ACTION == " sign out" ]]; then
	session=`loginctl session-status | head -n 1 | awk '{print $1}'`
	loginctl terminate-session $session
fi
