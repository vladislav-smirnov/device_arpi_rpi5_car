#
# Copyright (C) 2021-2024 Vladislav Smirnov
#
# SPDX-License-Identifier: Apache-2.0
#

#MD changes ====================================================================
PRODUCT_PRODUCT_PROPERTIES+= \
    ro.adb.secure=0

# Overrides default display settings
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/display_layout_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_layout_configuration.xml \
    $(LOCAL_PATH)/display_settings.xml:$(TARGET_COPY_OUT_VENDOR)/etc/display_settings.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.managed_users.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.managed_users.xml

PRODUCT_PACKAGE_OVERLAYS += \
    device/generic/car/emulator/multi-display/overlay

PRODUCT_PACKAGES += CarServiceOverlayMultiDisplay

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.max_profiles=5 \
    com.android.car.internal.debug.num_auto_populated_users=1

PRODUCT_PACKAGES += \
    MultiDisplaySecondaryHomeTestLauncher \
    MultiDisplayTest

# enables the rro package for passenger(secondary) user.
ENABLE_PASSENGER_SYSTEMUI_RRO := true
#MD changes ====================================================================