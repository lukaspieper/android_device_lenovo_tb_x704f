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

# inherit from common tb-common
-include device/lenovo/tb-common/BoardConfigCommon.mk

DEVICE_PATH := device/lenovo/TBX704

# Asserts
TARGET_OTA_ASSERT_DEVICE := TB-X704A,TB-X704F,TB-X704L,TBX704,X704A,X704F,X704L,tb_x704a,tb_x704f,tb_x704l

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Camera
TARGET_USES_QTI_CAMERA_DEVICE := true
TARGET_TS_MAKEUP := true

# GPU
SF_PRIMARY_DISPLAY_ORIENTATION := 90

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_lenovo_tbx704
TARGET_RECOVERY_DEVICE_MODULES := libinit_lenovo_tbx704

# Kernel
TARGET_KERNEL_CONFIG := lineageos_tbx704_defconfig

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_USERDATAIMAGE_PARTITION_SIZE := 9652641280
BOARD_ROOT_EXTRA_SYMLINKS += \
    /mnt/vendor/persist:/persist

# Power
TARGET_TAP_TO_WAKE_NODE := "/sys/devices/virtual/GT9110P/gt9110p/gesture"

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/lenovo/TBX704/BoardConfigVendor.mk
