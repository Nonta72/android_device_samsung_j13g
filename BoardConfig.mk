USE_CAMERA_STUB                              := true

# inherit from the proprietary version
-include vendor/samsung/j13g/BoardConfigVendor.mk

TARGET_ARCH                                  := arm
TARGET_BOARD_PLATFORM                        := sc8830
TARGET_CPU_ABI                               := armeabi-v7a
TARGET_CPU_ABI2                              := armeabi
TARGET_ARCH_VARIANT                          := armv7-a-neon
TARGET_CPU_VARIANT                           := cortex-a7
ARCH_ARM_HAVE_NEON                           := true
TARGET_CPU_SMP                               := true
ARCH_ARM_HAVE_TLS_REGISTER                   := true

# Assert
TARGET_OTA_ASSERT_DEVICE                     := j23g,j23dd,SM-J200H

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME                 := SC7730SE
TARGET_NO_BOOTLOADER                         := true
TARGET_NO_RADIOIMAGE                         := true

# Kernel
TARGET_PREBUILT_KERNEL                       := device/samsung/j23g/kernel
BOARD_KERNEL_CMDLINE                         := console=ttyS1,115200n8
BOARD_KERNEL_BASE                            := 0x00000000
BOARD_KERNEL_PAGESIZE                        := 2048
BOARD_MKBOOTIMG_ARGS                         := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/j23g/dt.img

# Use decimal values to simplify things. cat proc/partitions then block*1024
BOARD_BOOTIMAGE_PARTITION_SIZE               := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE           := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE             := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE           := 5872025600
#The following value is generic
BOARD_FLASH_BLOCK_SIZE                       := 131072

# TWRP Recovery
BOARD_HAS_NO_SELECT_BUTTON                   := true
TARGET_PREBUILT_KERNEL                       := device/samsung/j23g/kernel
TARGET_RECOVERY_INITRC                       := device/samsung/j23g/init.rc
TARGET_RECOVERY_FSTAB                        := device/samsung/j23g/twrp.fstab
BOARD_HAS_LARGE_FILESYSTEM                   := true
TARGET_RECOVERY_PIXEL_FORMAT                 := "RGBX_8888"
TW_THEME                                     := portrait_mdpi
SP1_NAME                                     := "internal_sd"
SP1_BACKUP_METHOD                            := files
SP1_MOUNTABLE                                := 1
TW_INTERNAL_STORAGE_PATH                     := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT              := "data"
TW_EXTERNAL_STORAGE_PATH                     := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT              := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE                  := true
TW_FLASH_FROM_STORAGE                        := true
TW_NO_REBOOT_BOOTLOADER                      := true
TW_HAS_DOWNLOAD_MODE                         := true
TW_NO_CPU_TEMP                               := true
TW_MTP_DEVICE                                := /dev/usb_mtp_gadget
BOARD_HAS_NO_MISC_PARTITION                  := true
BOARD_USE_CUSTOM_RECOVERY_FONT               := \"roboto_10x18.h\"
RECOVERY_GRAPHICS_USE_LINELENGTH             := true
