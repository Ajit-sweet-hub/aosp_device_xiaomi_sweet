# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common stuff
$(call inherit-product, vendor/spark/config/common.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_BLUR := true

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Reduce system image size by limiting java debug info.
#PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Gapps
WITH_GAPPS=true
TARGET_GAPPS_ARCH := arm64

PRODUCT_NAME := spark_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.211001.001 7641976 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.211001.001/7641976:user/release-keys"
