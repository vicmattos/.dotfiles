#!/usr/bin/env sh

# https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection

#
# INTEL
#

# If you're on Intel macOS 13.x.x, 12.x.x, or 11.x.x
# Requires Filesystem Protections and Debugging Restrictions to be disabled (workaround because --without debug does not work)
# (printed warning can be safely ignored)
csrutil disable --with kext --with dtrace --with nvram --with basesystem