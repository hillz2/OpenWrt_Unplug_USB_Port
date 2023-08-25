#!/bin/sh

# This is a script to unplug and then plug your usb device so that you don't have to do it physically, this is useful if you're far away from your OpenWrt device
# First, to actually know what is the USB number to use in this script, you should run "dmesg" command
# For example if I wanted to reset the USB connection of my Huawei USB Modem, I would connect my huawei modem to the USB port and execute this command: dmesg | grep -i huawei
# root:/tmp/ # dmesg | grep -i huawei
# [    4.464114] usb 1-1.2: Product: HUAWEI_MOBILE
# [    4.468421] usb 1-1.2: Manufacturer: HUAWEI_MOBILE
# [    5.541507] scsi 0:0:0:0: CD-ROM            HUAWEI   Mass Storage     2.31 PQ: 0 ANSI: 2
# [    5.546086] scsi 0:0:0:1: Direct-Access     HUAWEI   TF CARD Storage  2.31 PQ: 0 ANSI: 2

# The number is: "1-1.2". You put 1-1.2 in the variable below

usb_number="1-1.2"

echo "This is a script to unplug and then plug your usb device so that you don't have to do it physically, first please run \"dmesg\" to find out the USB number you want to unplug"
echo "Restarting USB device on number: ${usb_number}..."
echo "${usb_number}" > /sys/bus/usb/drivers/usb/unbind
sleep 1
echo "${usb_number}" > /sys/bus/usb/drivers/usb/bind
echo "Done"
