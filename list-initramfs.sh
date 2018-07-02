#!/bin/bash
set -v
xzcat initramfs | cpio -t
