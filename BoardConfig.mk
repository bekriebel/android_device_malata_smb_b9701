# inherit from the common version
-include device/malata/smb-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/malata/smb_b9701/BoardConfigVendor.mk

TARGET_OTA_ASSERT_DEVICE := harmony,smb_b9701

TARGET_PREBUILT_KERNEL := device/malata/smb_b9701/kernel
