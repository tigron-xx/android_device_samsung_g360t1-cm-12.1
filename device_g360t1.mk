#
# Copyright (C) 2013 The CyanogenMod Project
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

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/g360t1/overlay

PRODUCT_PACKAGES += Torch

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

PRODUCT_COPY_FILES += \
    device/samsung/g360t1/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/samsung/g360t1/prebuilt/etc/thermal-engine-8916.conf:system/etc/thermal-engine-8916.conf \
	device/samsung/g360t1/prebuilt/usr/keylayout/Generic-G360T1.kl:system/usr/keylayout/Generic-G360T1.kl \
    device/samsung/g360t1/fstab.msm8916:root/fstab.msm8916

PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# OTA
PRODUCT_COPY_FILES += \
    device/samsung/g360t1/prebuilt/fixup.sh:fixup.sh

$(call inherit-product, vendor/samsung/g360t1/g360t1-vendor.mk)

# Inherit from msm8916-common
$(call inherit-product, device/lge/msm8916-common/msm8916.mk)
