TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = Jodel


THEOS_DEVICE_IP = 192.168.100.3

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = AllInOne

AllInOne_FILES = Tweak.x
AllInOne_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
