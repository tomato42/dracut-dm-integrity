#!/bin/sh

modprobe dm_integrity

/sbin/initqueue --settled /sbin/integrity-mount.sh
# when integrity is not needed for the root device, the initqueue can exit
# before we have fired even once, so make sure we fire at least once:
/sbin/initqueue /sbin/integrity-mount.sh
# alternatively we could have a "--finished" script that returns 0 only
# after all integrity devices were started, but that would cause it to block
# in case of hardware failure
