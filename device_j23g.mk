$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/j23g/j23g-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/j23g/overlay

# Set local path
LOCAL_PATH := device/samsung/j23g

# Init files
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/init.grandneove3g.rc:root/init.grandneove3g.rc \
        $(LOCAL_PATH)/rootdir/init.grandneove3g_base.rc:root/init.grandneove3g_base.rc \
        $(LOCAL_PATH)/rootdir/init.sc8830.rc:root/init.sc8830.rc \
        $(LOCAL_PATH)/rootdir/init.sc8830.usb.rc:root/init.sc8830.usb.rc \
        $(LOCAL_PATH)/rootdir/init.sc8830_ss.rc:root/init.sc8830_ss.rc \
	$(LOCAL_PATH)/rootdir/ueventd.sc8830.rc:root/ueventd.sc8830.rc \
        $(LOCAL_PATH)/rootdir/init.board.rc:root/init.board.rc \
        $(LOCAL_PATH)/rootdir/fstab.sc8830:root/fstab.sc8830 \
        $(LOCAL_PATH)/rootdir/init.wifi.rc:root/init.wifi.rc 

LOCAL_PATH := device/samsung/j23g
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_j23g
PRODUCT_DEVICE := j23g
