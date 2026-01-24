# Permissive Kernel for Exynos 9611

## What is this?
This is a modified Android boot image with SELinux set to permissive mode and 32-bit app support enabled.

## What's included?
- `boot-permissive-32bit.img` - The kernel you can flash
- Scripts used to make it

## How to use?
1. Backup your current kernel
2. Flash this image using fastboot or dd command
3. Reboot your device

## WARNING!
- This disables SELinux security
- Use at your own risk
- Always backup first!

## Made by Chad
Built on CachyOS Linux

## Available Kernel Images

### Main Release:
- **`images/boot-permissive-32bit.img`** (38MB)
  - SELinux: Permissive
  - 32-bit support: Enabled
  - Cmdline: `androidboot.selinux=permissive androidboot.vm_has_32bit=1`

### Variants/Testing:
- **`images/variants/boot-samsung-permissive.img`**
  - Similar modifications, untested
  - Use with caution

## How to Choose?
If you're unsure, use the main release (`boot-permissive-32bit.img`).
The variant file is included for reference/testing purposes.
