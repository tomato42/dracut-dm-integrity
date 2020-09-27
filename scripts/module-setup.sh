#!/bin/bash
check() {
    require_binaries integritysetup || return 1
    return 0
}

depends() {
    echo rootfs-block dm
    return 0
}

install() {
    inst_hook cmdline 30 "$moddir/prepare-integrity.sh"
    inst_multiple integritysetup
    inst_simple "$moddir/integrity-mount.sh" /sbin/integrity-mount.sh
}

installkernel() {
    # hostonly='' is used to stop instmods being clever about "is it really
    # needed"
    hostonly='' instmods dm_integrity
}
