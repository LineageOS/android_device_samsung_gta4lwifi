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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from gta4lwifi device
$(call inherit-product, device/samsung/gta4lwifi/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gta4lwifi
PRODUCT_NAME := lineage_gta4lwifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T500
PRODUCT_MANUFACTURER := samsung

PRODUCT_SYSTEM_NAME := gta4lwifixx

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=gta4lwifixx \
    PRIVATE_BUILD_DESC="gta4lwifixx-user 12 SP1A.210812.016 T500XXS6CWI2 release-keys"

BUILD_FINGERPRINT := "samsung/gta4lwifixx/gta4lwifi:11/RP1A.200720.012/T500XXS6CWI2:user/release-keys"
