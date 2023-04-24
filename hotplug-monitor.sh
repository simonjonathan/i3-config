# not working...
#
#
# #!/bin/bash
#
# INTERNAL_OUTPUT="eDP-1"
# EXTERNAL_OUTPUT="HDMI-1"
# function connect() {
#     xrandr --output $INTERNAL_OUTPUT --off --output $EXTERNAL_OUTPUT --auto --primary ;
# }
#
# function disconnect() {
#     xrandr --output $INTERNAL_OUTPUT --auto --primary --output $EXTERNAL_OUTPUT --off ;
# }
#
# xrandr | grep "HDMI-1 connected" &> /dev/null && connect || disconnect

#!/bin/sh

# Get out of town if something errors
# set -e
#
# HDMI_STATUS=$(</sys/class/drm/card0/card0-HDMI-A-1/status )
#
# if [ "connected" == "$HDMI_STATUS" ]; then
# 	/usr/bin/xrandr --output HDMI-1 --auto --primary
# 	/usr/bin/xrandr --output eDP-1 --off
#     /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "HDMI plugged in"
# else 
#     /usr/bin/xrandr --output eDP-1 --auto --primary
# 	/usr/bin/xrandr --output HDMI-1 --off
# 	/usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "External monitor disconnected"	
# 	exit
# fi
#
# add file /etc/udev/rules.d/98-monitor-hotplug.rules 
# KERNEL=="card0", SUBSYSTEM=="drm", ACTION=="change", ENV{DISPLAY}=":0", ENV{XAUTHORITY}="/home/minidutche/.Xauthority", RUN+="~/.config/i3/hotplug_monitor.sh"
