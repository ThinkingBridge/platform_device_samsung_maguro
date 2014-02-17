# Release name
PRODUCT_RELEASE_NAME := GN-GSM

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common ThinkingBridge stuff.
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit gsm packages
$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/maguro/aosp_maguro.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := maguro
PRODUCT_NAME := thinkingbridge_maguro
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.3/JWR66Y/776638:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.3 JWR66Y 776638 release-keys"

PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/bootanimation/720.zip:system/media/bootanimation.zip
