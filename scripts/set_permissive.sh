#!/system/bin/sh
echo 0 > /sys/fs/selinux/enforce
setprop ro.boot.selinux permissive
setprop ro.debuggable 1
