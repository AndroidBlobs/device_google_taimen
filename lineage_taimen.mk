# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from taimen device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := google
PRODUCT_DEVICE := taimen
PRODUCT_MANUFACTURER := google
PRODUCT_NAME := lineage_taimen
PRODUCT_MODEL := Pixel 2 XL

PRODUCT_GMS_CLIENTID_BASE := android-google
TARGET_VENDOR := google
TARGET_VENDOR_PRODUCT_NAME := taimen
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="taimen-user 10 QQ1A.191205.008 5974827 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/taimen/taimen:10/QQ1A.191205.008/5974827:user/release-keys
