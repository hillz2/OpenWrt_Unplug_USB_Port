# OpenWrt_Unplug_USB_Port
Unplug and then plug your usb device on your OpenWrt router with a script

This is a script to unplug and then plug your usb device so that you don't have to do it physically, this is useful if you're far away from your OpenWrt device  <br /> 
First, to actually know what is the USB number to use in this script, you should run `dmesg` command <br /> 
For example if I wanted to reset the USB connection of my Huawei USB Modem, I would connect my huawei modem to the USB port and execute this command: `dmesg | grep -i huawei` <br /> 
```
root:/tmp/ # dmesg | grep -i huawei
[    4.464114] usb 1-1.2: Product: HUAWEI_MOBILE
[    4.468421] usb 1-1.2: Manufacturer: HUAWEI_MOBILE
[    5.541507] scsi 0:0:0:0: CD-ROM            HUAWEI   Mass Storage     2.31 PQ: 0 ANSI: 2
[    5.546086] scsi 0:0:0:1: Direct-Access     HUAWEI   TF CARD Storage  2.31 PQ: 0 ANSI: 2
```
The number is: **1-1.2**. Then you edit the script and replace `usb_number` with **1-1.2** <br /> 
To actually know if it's successful or not, you can check the uptime of that usb device on your LuCi Network Interface
