#!/bin/zsh
BACKLIGHT=/sys/class/backlight/amdgpu_bl1
CURRENT=$(cat $BACKLIGHT/brightness)
MAX=$(cat $BACKLIGHT/max_brightness)

case $1 in
    up)
        NEW=$((CURRENT + 50))
        [ $NEW -gt $MAX ] && NEW=$MAX
        ;;
    down)
        NEW=$((CURRENT - 50))
        [ $NEW -lt 0 ] && NEW=0
        ;;
esac

echo $NEW | sudo tee $BACKLIGHT/brightness
