#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/15570000.ufs/by-name/RECOVERY:27176960:916d66badd6e772aff453baad431569e2c3e28f6; then
  applypatch EMMC:/dev/block/platform/15570000.ufs/by-name/BOOT:26339328:6670265e7cd3ae20f8d92191518d7bc1d33a2f5f EMMC:/dev/block/platform/15570000.ufs/by-name/RECOVERY 916d66badd6e772aff453baad431569e2c3e28f6 27176960 6670265e7cd3ae20f8d92191518d7bc1d33a2f5f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
