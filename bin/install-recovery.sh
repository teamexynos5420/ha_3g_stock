#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:8052736:5f66c3b3d4e6357469416b83f6b9b210d1a6bc1c; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p9:7616512:95e18f2ba73bf69f9ad18cb0fc39abf62acaf4ff EMMC:/dev/block/mmcblk0p10 5f66c3b3d4e6357469416b83f6b9b210d1a6bc1c 8052736 95e18f2ba73bf69f9ad18cb0fc39abf62acaf4ff:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
