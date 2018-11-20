#
# Copyright (C) 2018 The MoKee Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sfo device
$(call inherit-product, device/smartisan/sfo/device.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.mk.maintainer=XiNGRZ

PRODUCT_NAME := mk_sfo
PRODUCT_BRAND := smartisan
PRODUCT_DEVICE := sfo
PRODUCT_MANUFACTURER := smartisan
PRODUCT_MODEL := SM705

TARGET_VENDOR_DEVICE_NAME := msm8974sfo_lte
TARGET_VENDOR_PRODUCT_NAME := msm8974sfo_lte

PRODUCT_GMS_CLIENTID_BASE := android-smartisan

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8974sfo_lte-user 4.4.2 SANFRANCISCO dev-keys"

BUILD_FINGERPRINT := smartisan/msm8974sfo_lte/msm8974sfo_lte:4.4.2/SANFRANCISCO:user/dev-keys

# Sign bootable images
PRODUCT_SUPPORTS_BOOT_SIGNER := true
PRODUCT_VERITY_SIGNING_KEY := build/target/product/security/verity

TARGET_VENDOR := Smartisan
