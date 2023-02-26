killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar left --config=$HOME/.config/polybar/config.ini &
polybar master --config=$HOME/.config/polybar/config.ini &
polybar right --config=$HOME/.config/polybar/config.ini &

