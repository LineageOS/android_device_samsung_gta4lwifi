#
# Copyright (C) 2023 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common gta4l-common
-include device/samsung/gta4l-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/gta4lwifi

# Assert
TARGET_OTA_ASSERT_DEVICE := gta4lwifi

# Board
TARGET_BOARD_NAME := P85943DA1
TARGET_BOOTIMAGE_BOARD_NAME := SRPTC24A006

# Kernel
TARGET_KERNEL_CONFIG := gta4l_eur_open_defconfig
BOARD_MKBOOTIMG_ARGS += --board $(TARGET_BOOTIMAGE_BOARD_NAME)

# SELinux
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/system_ext/private

# inherit from the proprietary version
include vendor/samsung/gta4lwifi/BoardConfigVendor.mk
