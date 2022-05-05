export SDKVERSION=13.7

ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = Jodel


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = JodelByExT

JodelByExT_FILES = Tweak.x
JodelByExT_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
