killall -q polybar

polybar laptop-main &
polybar tray &
polybar laptop-workspaces &
polybar laptop-spotify &

polybar monitor-main &
polybar monitor-more &
polybar monitor-workspaces &
polybar monitor-spotify &

echo "polybar launched"
