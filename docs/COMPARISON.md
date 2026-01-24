# Kernel Image Comparison

| Feature | boot-permissive-32bit.img | boot-samsung-permissive.img |
|---------|--------------------------|----------------------------|
| **Size** | 39MB | 39MB |
| **Build Date** | Jan 24, 2024 | Jan 21, 2024 |
| **SELinux** | Permissive | Likely Permissive |
| **32-bit Support** | Enabled | Likely Enabled |
| **Key Differences** | Newer build, tested | Older build, Samsung-focused |
| **Recommended For** | General use | Samsung device testing |

## How to Test:
1. Backup your current boot
2. Flash one image
3. Test 32-bit apps
4. Check `getenforce` for SELinux status
5. Restore backup if issues

## Findings:
- Files differ at bytes 17-18 and 65-67
- Likely different kernel parameters
- Both have same functionality goals
