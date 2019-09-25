ifeq ($(CUSTOM_BUILD_TYPE), OFFICIAL)

ifeq ($(TARGET_SHIPS_SEPERATE_GAPPS_BUILD), true)
ifeq ($(WITH_GAPPS), true)
CUSTOM_OTA_VERSION_CODE := ten_gapps
else
CUSTOM_OTA_VERSION_CODE := ten
endif
endif

CUSTOM_PROPERTIES += \
    org.cerberus.ota.version_code=$(CUSTOM_OTA_VERSION_CODE) \
    sys.ota.disable_uncrypt=1

PRODUCT_PACKAGES += \
    Updates

PRODUCT_COPY_FILES += \
    vendor/aosp/config/permissions/org.cerberus.ota.xml:system/etc/permissions/org.cerberus.ota.xml

endif
