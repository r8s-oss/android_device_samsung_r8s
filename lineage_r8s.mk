#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Common
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Device
$(call inherit-product, device/samsung/r8s/device.mk)

## LineageOS
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := lineage_r8s
PRODUCT_DEVICE := r8s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G780F
PRODUCT_MANUFACTURER := Samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=r8sxx \
    PRIVATE_BUILD_DESC="r8sxx-user 11 RP1A.200720.012 G780FXXU9DVE7 release-keys"

BUILD_FINGERPRINT := samsung/r8sxx/r8s:11/RP1A.200720.012/G780FXXU9DVE7:user/release-keys
