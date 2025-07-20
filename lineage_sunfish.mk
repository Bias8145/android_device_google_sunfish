#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

# Maintainer name
AXION_MAINTAINER := khaliq

# Processor name (use "_" for spaces)
AXION_PROCESSOR := Snapdragon 730G

# Define rear camera specs (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 12

# Define front camera specs
AXION_CAMERA_FRONT_INFO := 8

TARGET_ENABLE_BLUR := true
TARGET_INCLUDE_VIPERFX := true
TARGET_INCLUDES_LOS_PREBUILTS := true
BYPASS_CHARGE_SUPPORTED := true

# CPUsets configuration
AXION_CPU_BG := 0-3
AXION_CPU_FG := 0,3-5,7
AXION_CPU_LIMIT_BG := 0-1
AXION_CPU_UNLIMIT_UI := 0-7
AXION_CPU_LIMIT_UI := 0-5
AXION_CPU_DISPLAY := 6-7
AXION_CPU_AUDIO := 0-4

include device/google/sunfish/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a
PRODUCT_NAME := lineage_sunfish

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sunfish-user 13 TQ3A.230805.001.S1 10786265 release-keys" \
    BuildFingerprint=google/sunfish/sunfish:13/TQ3A.230805.001.S1/10786265:user/release-keys \
    DeviceProduct=sunfish

$(call inherit-product, vendor/google/sunfish/sunfish-vendor.mk)
