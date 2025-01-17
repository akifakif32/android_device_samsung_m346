#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from m34x device
$(call inherit-product, device/samsung/m34x/device.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/m34x/recovery/root,recovery/root)

PRODUCT_DEVICE := m34x
PRODUCT_NAME := twrp_m34x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M346B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung
