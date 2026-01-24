[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
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

## Technical Details

### File Comparison:
- **boot-permissive-32bit.img**: 39M, built Jan 24
- **boot-samsung-permissive.img**: 39M, built Jan 21
- **Status**: Files differ in kernel parameters/timestamps

### Byte-level Differences Found:
- Bytes 17-18: Different kernel cmdline values
- Bytes 65-67: Different header/timestamp information

### Which Should You Use?
- **For general use**: `boot-permissive-32bit.img` (newer build)
- **For Samsung-specific testing**: `boot-samsung-permissive.img`
- **If unsure**: Try the main image first

### Verification:
To verify which works on your device, test with:

\`\`\`bash
# Check kernel cmdline
abootimg -i boot.img | grep "cmdline ="
\`\`\`

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
