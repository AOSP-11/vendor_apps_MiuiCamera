# Copyright (C) 2019 The LineageOS Project
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

ifeq ($(TARGET_DEVICE),$(filter $(TARGET_DEVICE),sagit))

VENDOR_PATH := vendor/apps/MiuiCamera

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/etc,system/etc) \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/lib,system/lib) \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/lib64,system/lib64)

#BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy

# MiuiCamera
PRODUCT_PACKAGES += \
    MiuiCamera

endif
