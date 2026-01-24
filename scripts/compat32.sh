#!/system/bin/sh
# 32-bit compatibility for 64-bit GSI

# Enable 32-bit binder if supported
if [ -e /sys/module/binder/parameters/vm_has_32bit ]; then
    echo 1 > /sys/module/binder/parameters/vm_has_32bit
fi

# Set architecture properties
setprop ro.product.cpu.abilist "armeabi-v7a,armeabi,arm64-v8a"
setprop ro.product.cpu.abilist32 "armeabi-v7a,armeabi"
setprop ro.product.cpu.abilist64 "arm64-v8a"
setprop ro.enable.native.bridge.exec 1
setprop ro.dalvik.vm.native.bridge "libhoudini.so"
setprop persist.sys.nativebridge 1

# Create binder nodes with correct permissions
chmod 0666 /dev/binder 2>/dev/null
chmod 0666 /dev/hwbinder 2>/dev/null
chmod 0666 /dev/vndbinder 2>/dev/null

# Set LD_LIBRARY_PATH for 32-bit libraries
export LD_LIBRARY_PATH=/vendor/lib:/system/lib:$LD_LIBRARY_PATH
