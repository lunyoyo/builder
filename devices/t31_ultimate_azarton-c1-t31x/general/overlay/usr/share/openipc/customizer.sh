#!/bin/sh
#
# Perform basic settings on a known IP camera
#
#
# Set custom upgrade url
#
fw_setenv upgrade 'https://github.com/OpenIPC/builder/releases/download/latest/t31_ultimate_azarton-c1-t31x-nor.tgz'
#
#
# Set custom majestic settings
#
cli -s .nightMode.irCutPin1 53
cli -s .nightMode.irCutPin2 52
cli -s .nightMode.backlightPin 49
cli -s .video0.codec h264
#
#
# Set wlan device and credentials if need
#
fw_setenv wlandev 8818fu-t31-iflytek
fw_setenv wlanssid 888
fw_setenv wlanpass 13689003731
#
#
# Set osmem and rmem
#
fw_setenv osmem 64M
fw_setenv rmem 64M@0x4000000
#
exit 0
