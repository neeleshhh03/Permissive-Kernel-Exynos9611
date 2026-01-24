# How to Install

## Requirements
- Android device with Exynos 9611
- ADB and Fastboot installed
- Unlocked bootloader

## Steps:
1. Backup your current boot image
2. Flash boot-permissive-32bit.img
3. Reboot your device

## Backup command:
adb shell su -c "dd if=/dev/block/bootdevice/by-name/boot of=/sdcard/backup.img"

## Flash command:
adb shell su -c "dd if=/sdcard/boot-permissive-32bit.img of=/dev/block/bootdevice/by-name/boot"
