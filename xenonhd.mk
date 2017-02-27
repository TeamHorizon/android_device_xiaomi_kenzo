$(call inherit-product, device/xiaomi/kenzo/full_kenzo.mk)

# Inherit some common XenonHD stuff.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := kenzo
PRODUCT_NAME := xenonhd_kenzo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Redmi Note 3 Pro
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_PROPERTY_OVERRIDES += ro.xenonhd.maintainer=dadi11

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=Xiaomi/kenzo/kenzo:6.0.1/MMB29M/V8.2.1.0.MHOCNDL:user/release-keys \
    PRIVATE_BUILD_DESC="kenzo-user 6.0.1 MMB29M V8.2.1.0.MHOCNDL release-keys"
endif
