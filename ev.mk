$(call inherit-product, device/htc/m8/full_m8.mk)

# Enhanced NFC
#$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

PRODUCT_NAME := ev_m8

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := Sano

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your HTC One (M8)!\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Copy compatible prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/ev/prebuilt/1080p/media/bootanimation.zip:system/media/bootanimation.zip

# qHD overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/1080p

# Hot reboot
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/ev/overlay/hot_reboot
