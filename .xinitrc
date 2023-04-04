xrandr --output DP-2 --mode 1920x1080 --rate 144 &
xset r rate 300 50 &
setxkbmap -option caps:swapescape && notify-send -u low -t 1000 &
dwmblocks &
mpd&
unclutter &
sxhkd -c ~/suckless/dotfiles/sxhkdrc &
xinput set-prop 11 330 -.6 &
flameshot &
xss-lock slock &
dunst &
setbg &
imwheel -b 45 &
exec dbus-launch --exit-with-session dwm
