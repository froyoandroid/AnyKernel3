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
BLOCK=boot;
IS_SLOT_DEVICE=auto;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;
NO_BLOCK_DISPLAY=1;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;


ui_print " ";
ui_print '                __   __';
ui_print '               /  \ /  \';
ui_print '          .--. \   V   / .--.';
ui_print "         (    '-\\  |  /-'    )";
ui_print "          '--._  (*@*)  _.--'";
ui_print '               /`  |  `\';
ui_print "              (__.'|'.__)";
ui_print '                   |';
ui_print '          .-.      |';
ui_print '         (   )_    |    _.-.';
ui_print "          '-.  '-. | .-'   )";
ui_print "             '-._ \\|/ _.-'";
ui_print "                 '-|-'";
ui_print '                   |';
ui_print " ";
ui_print "  P R O J E C T   H A I L   M A R Y";
ui_print "     chopin  -  4.19  -  firenza2099";
ui_print "  ---------------------------------";
ui_print " ";
ui_print "  [1/2] Unpacking boot image...";
split_boot;

ui_print "  [2/2] Flashing kernel + dtb...";
flash_boot;

ui_print " ";
ui_print "  Fist my bump.";
ui_print " ";
## end boot install


