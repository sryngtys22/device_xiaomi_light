#
# Copyright (C) 2023 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#


# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Infinity-X stuff
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from light device
$(call inherit-product, device/xiaomi/light/device.mk)

# Infinity Stuff
TARGET_BOOT_ANIMATION_RES := 1080
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := Sryngtys

# Device identifier. This must come after all inclusions
PRODUCT_NAME := infinity_light
PRODUCT_DEVICE := light
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

