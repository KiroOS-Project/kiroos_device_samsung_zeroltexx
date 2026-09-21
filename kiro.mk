#
# KiroOS Developer Beta 2 product: lunch kiro_zerolte-userdebug
# Galaxy S6 edge (SM-G925F), device tree device/samsung/zeroltexx
#

# Device configuration (zero hardware family: universal7420-common + KiroOS layer)
$(call inherit-product, device/samsung/zeroltexx/full_zeroltexx.mk)

TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="zeroltexx" \
    TARGET_DEVICE="zerolte"

PRODUCT_NAME := kiro_zerolte
PRODUCT_DEVICE := zeroltexx
PRODUCT_BRAND := KiroOS
PRODUCT_MODEL := Galaxy S6 edge
PRODUCT_MANUFACTURER := samsung

# Model facts read by Settings (About phone, Edge screen) and init (palm rejection)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kiroos.model=SM-G925F \
    ro.kiroos.battery_mah=2600 \
    ro.kiroos.ram_gb=3 \
    ro.kiroos.edge=1 \
    persist.sys.kiroos.edge_zone=3
