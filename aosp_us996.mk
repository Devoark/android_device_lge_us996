#
# Copyright 2016 The CyanogenMod Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from us996 device
$(call inherit-product, device/lge/us996/device.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := us996
PRODUCT_NAME := aosp_us996
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-US996
PRODUCT_MANUFACTURER := LGE

#Inherit from CAF msm8996 device
$(call inherit-product, device/lge/us996/base.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/common.mk)

# Inherit some common CM stuff.
#$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := aosp_us996

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="v20" \
    PRODUCT_NAME="elsa_nao_us" \
    BUILD_FINGERPRINT="lge/elsa_nao_us/elsa:7.0/NRD90M/162831845a3a3:user/release-keys" \
    PRIVATE_BUILD_DESC="elsa_nao_us-user 7.0 NRD90M 162831845a3a3 release-keys"
