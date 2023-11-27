#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from dubai device
$(call inherit-product, device/motorola/dubai/device.mk)

PRODUCT_DEVICE := dubai
PRODUCT_NAME := lineage_dubai
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g200 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dubai_g-user 11 T1RD33.116-33-12 d501e0 release-keys"

BUILD_FINGERPRINT := motorola/dubai_g/dubai:11/T1RD33.116-33-12/d501e0:user/release-keys
