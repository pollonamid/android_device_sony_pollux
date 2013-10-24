# Copyright (C) 2011 The Android Open Source Project
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
#
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#
#

# Inherit common Phone stuff.
$(call inherit-product, vendor/custom/config/common.mk)

TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920
 
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Common Sony Resources
$(call inherit-product, device/sony/common/resources.mk)

#Inherit Device stuff.
$(call inherit-product, device/sony/pollux/device.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGP321 BUILD_FINGERPRINT=Sony/SGP321_1273-0364/SGP321:4.2.2/10.3.1.A.0.244/C_93rg:user/release-keys PRIVATE_BUILD_DESC="SGP321-user 4.2.2 10.3.1.A.0.244 C_93rg test-keys"

PRODUCT_NAME := custom_pollux
PRODUCT_DEVICE := pollux