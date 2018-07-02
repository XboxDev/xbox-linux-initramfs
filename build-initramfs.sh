#!/bin/bash
set -v
dir="initramfs-xbox"
out="initramfs"
find "$dir" -mindepth 1 -printf '%P\n' | grep -v [.]gitignore | sort | cpio -o -H newc -D "$dir" > "$out"
xz -v -C crc32 "$out"
mv -fv "$out".xz "$out"
