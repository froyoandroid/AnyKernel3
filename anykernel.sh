### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Kernel Chopin by firenza2099
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=chopin
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

# boot shell variables
block=boot;
is_slot_device=auto;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;
no_block_display=1;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;


ui_print "Initializing installation..."
split_boot;

ui_print "Flashing kernel image..."
flash_boot;

if [ -f "dtbo.img" ]; then
  ui_print "Flashing DTBO image..."
  flash_dtbo;
fi

ui_print "Installation complete!"
## end boot install


