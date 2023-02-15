DP=HDMI-0
DVI=DP-0
HDMI=DVI-D-0

xrandr --output $DP                     --mode 1920x1080 --rate 144.00
xrandr --output $DVI  --right-of $DP    --mode 2560x1440 --rate 164.83 --primary
xrandr --output $HDMI --right-of $DVI   --mode 1920x1080 --rate 75

