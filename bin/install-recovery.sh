#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:8052736:b707f1c954c772a803b28213dc6c7698cf35ff95; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p9:7622656:012e9a145a3e40cba8d68d95627775a09cb1c5ff EMMC:/dev/block/mmcblk0p10 b707f1c954c772a803b28213dc6c7698cf35ff95 8052736 012e9a145a3e40cba8d68d95627775a09cb1c5ff:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
