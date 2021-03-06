# Copyright (C) 2020 The LineageOS Project
# Copyright (C) 2020 The PixelExperience Project
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

# Inherit from albus device
$(call inherit-product, device/motorola/albus/device.mk)

# Inherit some common Pixel Experience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := aosp_albus
PRODUCT_DEVICE := albus
PRODUCT_MODEL := Moto Z2 Play
PRODUCT_RELEASE_NAME := albus

#Gapps
$(call inherit-product-if-exists, vendor/gapps/config.mk)

TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := true

# Build Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="albus-user 9 PPS29.133-30 ab8b4 release-keys"
