DP=DP-0
DVI=DVI-D-0
HDMI=HDMI-0

xrandr --output $DP   --rotate   left   --rate 144
xrandr --output $DVI  --right-of $DP    --primary
xrandr --output $HDMI --right-of $DVI   --rate 75
xrandr --output $DP   --pos      0x-420

xrandr --output $HDMI --pos 3641x420
xrandr --output $HDMI --pos 3640x420
