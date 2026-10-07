#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/lge/mlv5

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Time Zone data
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Init scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.recovery.mlv5.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.mlv5.rc \
    $(LOCAL_PATH)/init.recovery.mlv5_product.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.mlv5_product.rc \
    $(LOCAL_PATH)/ueventd.mlv5.rc:$(TARGET_COPY_OUT_RECOVERY)/root/ueventd.mlv5.rc

# Prebuilt kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/kernel:kernel