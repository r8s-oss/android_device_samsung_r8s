#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

## Device Path
DEVICE_PATH := device/samsung/r8s

## Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.effect@5.0-impl:32 \
    android.hardware.audio@5.0-impl:32 \
    android.hardware.audio.service \
    android.hardware.bluetooth.audio@2.1-impl:32 \
    android.hidl.allocator@1.0.vendor \
    audio.a2dp.default \
    audio.bluetooth.default \
    audio.r_submix.default \
    audio.usb.default \
    libaudioroute \
    libtinyalsa \
    libtinycompress

TARGET_EXCLUDES_AUDIOFX := true

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl:64 \
    android.hardware.bluetooth@1.0-service \
    libbt-vendor:64

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.6-service_64.exynos990 \
    libsensorndkbridge

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl:64 \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.3-service \
    android.hardware.graphics.mapper@2.0-impl-2.1

TARGET_SCREEN_DENSITY := 480
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.4-service.clearkey

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# FastCharge
PRODUCT_PACKAGES += \
    vendor.lineage.fastcharge@1.0-service.samsung

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.samsung

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl:64 \
    android.hardware.gatekeeper@1.0-service

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.1.vendor:64

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl:64 \
    android.hardware.health@2.0-service

# HIDL
PRODUCT_PACKAGES += \
   libhidltransport \
   libhidltransport.vendor \
   libhwbinder \
   libhwbinder.vendor

# Init
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/init/fstab.exynos990:$(TARGET_COPY_OUT_RAMDISK)/fstab.exynos990 \
    $(DEVICE_PATH)/configs/init/fstab.exynos990:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.exynos990 \
    $(DEVICE_PATH)/configs/init/init.exynos990.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.exynos990.rc \
    $(DEVICE_PATH)/configs/init/init.exynos990.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.exynos990.usb.rc \
    $(DEVICE_PATH)/configs/init/init.recovery.exynos990.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.exynos990.rc \
    $(DEVICE_PATH)/configs/init/ueventd.rc:$(TARGET_COPY_OUT_VENDOR)/etc/ueventd.rc

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.0-service.samsung \
    libkeymaster4_1support.vendor:64

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light-service.samsung

# Livedisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service.exynos990

# OMX
PRODUCT_PACKAGES += \
    libepicoperator

# Memtrack
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl:64 \
    android.hardware.memtrack@1.0-service

# Neuralnetworks
PRODUCT_PACKAGES += \
    android.hardware.neuralnetworks@1.3.vendor \
    libtextclassifier_hash.vendor

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service.samsung \
    com.android.nfc_extras \
    NfcNci \
    Tag

# PowerShare
PRODUCT_PACKAGES += \
    vendor.lineage.powershare@1.0-service.samsung

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# RIL
PRODUCT_PACKAGES += \
    android.hardware.radio@1.4.vendor:64 \
    android.hardware.radio.config@1.1.vendor:64 \
    android.hardware.radio.deprecated@1.0.vendor:64 \
    secril_config_svc

# SamsungDoze
PRODUCT_PACKAGES += \
    SamsungDoze

# Secure Element
PRODUCT_PACKAGES += \
    android.hardware.secure_element@1.0.vendor:64

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.contexthub@1.0.vendor:64 \
    android.hardware.sensors@2.1-service.samsung-multihal

# Shims
PRODUCT_PACKAGES += \
    libshim_audioparams \
    libshim_sensorndkbridge

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0-service.samsung

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.3-service.samsung

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.samsung

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf
