$(call inherit-product, device/malata/smb-common/smb-common.mk)

$(call inherit-product-if-exists, vendor/malata/smb_b9701/smb_b9701-vendor.mk)

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/malata/smb_b9701/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/wifi/bcm4329.ko:system/lib/hw/wlan/bcm4329.ko

PRODUCT_NAME := full_smb_b9701
PRODUCT_DEVICE := smb_b9701
