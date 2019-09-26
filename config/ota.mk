ifeq ($(CUSTOM_BUILD_TYPE), Official)

CUSTOM_OTA_VERSION_CODE := 10

CUSTOM_PROPERTIES += \
    org.cerberus.ota.version_code=$(CUSTOM_OTA_VERSION_CODE) \
    sys.ota.disable_uncrypt=1

PRODUCT_PACKAGES += \
    Updates

PRODUCT_COPY_FILES += \
    vendor/aosp/config/permissions/org.cerberus.ota.xml:system/etc/permissions/org.cerberus.ota.xml

endif
