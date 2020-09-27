# dracut-dm-integrity

This is a module for the
[dracut](https://dracut.wiki.kernel.org/index.php/Main_Page)
event based initramfs.
It's designed to open
[dm-integrity](https://www.kernel.org/doc/html/latest/admin-guide/device-mapper/dm-integrity.html)
devices before the root device is mounted.

Commonly used to protect against silent data corruption when used together
with Linux MD-RAID devices

## Installation

1. Create the `/usr/lib/dracut/modules.d/90integrity` directory.
2. Copy the files from `scripts` to `/usr/lib/dracut/modules.d/90integrity`
   directory.
3. Edit the `integrity-mount.sh` file to use identifiers and names of
   partitions you have (use `blkid /dev/sdXY` on partitions with dm-integrity
   volumes to get partuuids) and set the integrity algorithm you use
   (the `-I` option).
4. Run `dracut -f` to put those files into initramfs, next reboot should
   cause them to be automatically started on boot.

Caution: I've noticed that in some VMs all virtual disks are the same, thus
the partuuids are the same! Use of raw device names instead should be safe
then (i.e. `/dev/sda1`).
