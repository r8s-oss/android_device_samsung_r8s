## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from x1slte device
$(call inherit-product, device/samsung/x1slte/device.mk)

## Boot Animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier, this must come after all inclusions
PRODUCT_NAME := lineage_x1slte
PRODUCT_DEVICE := x1slte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G980F
PRODUCT_MANUFACTURER := samsung
PRODUCT_PDA_MODEL := G980F
PRODUCT_PDA_MODEL_VERSION := XXSADUH5
PRODUCT_PDA_VERSION := $(PRODUCT_PDA_MODEL)$(PRODUCT_PDA_MODEL_VERSION)
PRODUCT_SHIPPING_API_LEVEL := 29

PRODUCT_SYSTEM_NAME := x1sxx

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=x1sxx \
    PRODUCT_DEVICE=x1slte \
    PRIVATE_BUILD_DESC="x1sltexx-user 11 RP1A.200720.012 $(PRODUCT_PDA_VERSION) release-keys"

BUILD_FINGERPRINT := samsung/x1sxx/x1s:11/RP1A.200720.012/$(PRODUCT_PDA_VERSION):user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.PDA=$(PRODUCT_PDA_VERSION)
