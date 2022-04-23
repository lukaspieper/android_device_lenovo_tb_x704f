#
# Copyright (C) 2019 The LineageOS Project
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

# Boot animation
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/TBX704/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_TBX704
PRODUCT_DEVICE := TBX704
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X704F
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    ro.build.version.security_patch=2018-10-01 \
    PRIVATE_BUILD_DESC="LenovoTB-X704F-user 7.1.1 NMF26F TB-X704F_S000056_181015_ROW release-keys" \
    TARGET_DEVICE="X704F"

BUILD_FINGERPRINT := Lenovo/LenovoTB-X704F/X704F:7.1.1/NMF26F/TB-X704F_S000056_181015_ROW:user/release-keys
