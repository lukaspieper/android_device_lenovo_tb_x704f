#
# Copyright (C) 2017 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/tb_x704f/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_tb_x704f
PRODUCT_DEVICE := tb_x704f
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := TB-X704F
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT=Lenovo/LenovoTB-X704F/X704F:7.1.1/NMF26F/TB-X704F_S000056_181015_ROW:user/release-keys
	PRIVATE_BUILD_DESC="hq_msm8953_64-user 7.1.1 NMF26F 1581 release-keys" \
    TARGET_DEVICE="tb_x704f"
