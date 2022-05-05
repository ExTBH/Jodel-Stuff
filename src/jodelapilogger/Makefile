TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = Jodel


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = JodelAPILogger

JodelAPILogger_FILES = Tweak.x
JodelAPILogger_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
