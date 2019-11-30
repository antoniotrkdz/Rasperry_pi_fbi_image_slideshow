# Rasperry Pi fbi image slideshow
This a little script to run the raspberry PI as a slideshow image viewer.

Is using fbi which stands for Frame Buffer Image viewer.

The images need to on a separate usb stick to be loaded at startup.

The script checks for the mountpoint (to be specified in /etc/fstab).

If present asks for the time between each image (defaults to 10 secs, so no interaction needed).

If not present just waits 15 secs and then halts the Pi.
