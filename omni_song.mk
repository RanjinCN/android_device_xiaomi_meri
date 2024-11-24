#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from song device
$(call inherit-product, device/xiaomi/song/device.mk)

PRODUCT_DEVICE := song
PRODUCT_NAME := omni_song
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := song
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="song-user 7.1.2 N2G47J V11.0.3.0.NCJCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/meri/meri:7.1.2/N2G47J/V11.0.3.0.NCJCNXM:user/release-keys
