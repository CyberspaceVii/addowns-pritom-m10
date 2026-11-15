#!/system/bin/sh
[ "$(getprop ro.product.device)" = M10_R01 ] || abort "Fail! This module is for the Pritom Max 10 (M10_R01)."
[ "$KSU" = true ] || abort "Fail! KernelSU Next is required."

ui_print "AdDowns CyberspaceVII"
ui_print " "
ui_print "Patching..."

ok=1
mkdir -p "$MODPATH/system/product/app" || ok=0
mknod "$MODPATH/system/product/app/FotaUpdate" c 0 0 2>/dev/null && chmod 644 "$MODPATH/system/product/app/FotaUpdate" || ok=0

if [ "$ok" = 1 ]; then ui_print "Success!"; else ui_print "Fail!"; fi
