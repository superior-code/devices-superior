#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 7720960 b67570a0c8b8049212c7bd540ac71263a5cb4e4f 5206016 6cdcd92177affaec723feb922ea40c60032b59a5
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p6:7720960:b67570a0c8b8049212c7bd540ac71263a5cb4e4f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:5206016:6cdcd92177affaec723feb922ea40c60032b59a5 EMMC:/dev/block/mmcblk0p6 b67570a0c8b8049212c7bd540ac71263a5cb4e4f 7720960 6cdcd92177affaec723feb922ea40c60032b59a5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
