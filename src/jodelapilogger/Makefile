export SDKVERSION=13.7
ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = Jodel


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = JodelAPILogger

JodelAPILogger_FILES = Tweak.x
JodelAPILogger_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
