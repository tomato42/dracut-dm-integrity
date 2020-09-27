#!/bin/sh

if [ -e /dev/disk/by-partuuid/6cbf042b-7808-4b71-a77b-99f0f3c22c66 ] && ! [ -e /dev/mapper/int-sda ]; then
        integritysetup open /dev/disk/by-partuuid/6cbf042b-7808-4b71-a77b-99f0f3c22c66 int-sda -I sha1
fi

if [ -e /dev/disk/by-partuuid/e9e7af4f-193e-4a1e-98d1-5016496087d5 ] && ! [ -e /dev/mapper/int-sdb ]; then
        integritysetup open /dev/disk/by-partuuid/e9e7af4f-193e-4a1e-98d1-5016496087d5 int-sdb -I sha1
fi

if [ -e /dev/disk/by-partuuid/c35a79c8-a817-4b28-a6f3-25769ae25c3a ] && ! [ -e /dev/mapper/int-sdc ]; then
        integritysetup open /dev/disk/by-partuuid/c35a79c8-a817-4b28-a6f3-25769ae25c3a int-sdc -I sha1
fi
