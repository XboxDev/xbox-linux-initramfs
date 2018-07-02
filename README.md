# `initramfs` for [xbox-linux](https://github.com/XboxDev/xbox-linux)
`initramfs` is an optional root filesystem for the Linux kernel.

See [`ramfs-rootfs-initramfs.txt`](https://github.com/XboxDev/xbox-linux/blob/master/Documentation/filesystems/ramfs-rootfs-initramfs.txt#L86) for more information.

## Dependencies
* A working `xz` compressor with a `crc32` integrity check option.

## Building
* `$ cd xbox-linux-initramfs/`
* `$ ./build-initramfs.sh`

## Execution
* Use built `initramfs` in Cromwell.

Cromwell 2.40 can load a `initramfs` along with the kernel. See included [`linuxboot.cfg`](https://github.com/XboxDev/xbox-linux-initramfs/blob/master/linuxboot.cfg) that is used with Cromwell.

Upon kernel boot, the [`init`](https://github.com/XboxDev/xbox-linux-initramfs/blob/master/initramfs-xbox/init) script will listen for a key press for 5 seconds to launch an interactive shell, if a keyboard is attached to the Xbox via a [Xbox-to-USB conversion cable](http://xboxdevwiki.net/Xbox_Input_Devices#USB_Adapters). If `noswitchroot` is added as a kernel parameter in [`linuxboot.cfg`](https://github.com/XboxDev/xbox-linux-initramfs/blob/master/linuxboot.cfg), you will have immediate access to the interactive shell.
