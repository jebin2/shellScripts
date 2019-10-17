i=0
while [ "$i" != "10" ]
do
	echo "wmctrl -a 'Google - Mozilla FireFox'; xdotool key Ctrl+w ctrl+r "+i
	wmctrl -a 'Google - Mozilla FireFox'; xdotool key Ctrl+w ctrl+r
  i=$((i+1))
	sleep 10
done
