## Specify phone tech before including full_phone

# Release name
PRODUCT_RELEASE_NAME := i9300
PRODUCT_VERSION_MAINTENANCE := 12

# Boot animation	
TARGET_BOOTANIMATION_NAME := vertical-720x1280

#$(call inherit-product, vendor/osr/products/asian.mk)

$(call inherit-product, vendor/osr/products/dspmanager.mk)

$(call inherit-product, vendor/osr/products/xhdpi.mk)

$(call inherit-product, vendor/osr/products/high_telephony_device.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/i9300/full_i9300.mk)

#test in ICS-RC
PRODUCT_PACKAGES += \
    ContactsWidgets \
    ROMControl

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := i9300
PRODUCT_NAME := osr_i9300
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9300
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9300 TARGET_DEVICE=GT-I9300 BUILD_FINGERPRINT="samsung/m0xx/m0:4.0.4/IMM76D/I9300XXALE8:user/release-keys" PRIVATE_BUILD_DESC="m0xx-user 4.0.4 IMM76D I9300XXALE8 release-keys"

# Inherit drm blobs
#-include vendor/osr/products/drm.mk

# Inherit Facelock blobs
-include vendor/osr/products/facelock.mk

# T-Mobile theme engine
include vendor/osr/products/themes_common.mk

VENDOR_COPY_USER_DATA := false
VENDOR_WIPE_USER_DATA := false

PRODUCT_LOCALES := es_ES fr_FR it_IT de_DE en_US pt_PT ca_ES en_GB
#PRODUCT_LOCALES := es_ES fr_FR it_IT de_DE nl_NL pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR en_US pt_PT ca_ES en_GB ro_RO
