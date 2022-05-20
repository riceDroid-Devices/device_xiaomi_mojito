#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

# Inherit some RiceDroid stuffs
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# gapps build flag, if not defined build type is vanilla
# GAPPS package is similar to core gapps
WITH_GAPPS := true

# maintainer flag
RICE_MAINTAINER := xscar

# Quick Tap 
TARGET_SUPPORTS_QUICK_TAP := true

#Face unlock 
TARGET_FACE_UNLOCK_SUPPORTED := true

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_mojito
PRODUCT_DEVICE := mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
