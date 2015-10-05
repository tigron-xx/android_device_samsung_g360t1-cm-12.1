# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Release name
PRODUCT_RELEASE_NAME := Samsung Galaxy Core Prime
PRODUCT_NAME := cm_g360t1

$(call inherit-product, device/samsung/g360t1/full_g360t1.mk)
