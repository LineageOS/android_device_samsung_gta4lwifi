#
# Copyright (C) 2023 The LineageOS Project
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

# Get non-open-source specific aspects
$(call inherit-product, vendor/samsung/gta4lwifi/gta4lwifi-vendor.mk)

# Local overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Rotation
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.bootanim.set_orientation_4630946474265338241=ORIENTATION_90

# Device init scripts
PRODUCT_PACKAGES += \
    init.gta4lwifi.rc

# Inherit from gta4l-common
$(call inherit-product, device/samsung/gta4l-common/gta4l.mk)
